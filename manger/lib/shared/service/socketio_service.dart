import 'dart:async';

import 'package:manger/login/login_provider.dart';
import 'package:manger/shared/dio_client.dart';
import 'package:manger/shared/logger.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';
import 'package:socket_io_client/socket_io_client.dart';

final socketIo = Provider((_) {
  final socket = io(
    baseUrl,
    {
      'transports': ['websocket'],
      'pingTimeout': 5000,
      'connectTimeout': 5000,
      'pingInterval': 5000,
      'extraHeaders': <String, String>{
        'authorization': _.watch(loginProvider)!.accessToken,
      },
      'forceNew': true
    },
  )..onConnect((data) {
      log("Conntected $data");
    });

  // for (var element in [
  //   'connect',
  //   'connect_error',
  //   'connect_timeout',
  //   'connecting',
  //   'disconnect',
  //   'error',
  //   'reconnect',
  //   'reconnect_attempt',
  //   'reconnect_failed',
  //   'reconnect_error',
  //   'reconnecting',
  //   'ping',
  //   'pong'
  // ]) {
  //   socket.on(element, (data) => log("logevent $element $data"));
  // }

  socket.connect();
  _.onDispose(() {
    socket.dispose();
  });

  return socket;
});
final socketIoServiceProvider = Provider((_) => SocketIoService(
      _.read,
      _.watch(socketIo),
    ));

class SocketIoService {
  final Socket socket;
  final Reader read;

  SocketIoService(this.read, this.socket);
  Stream<Order> lisienToKitchenOrder(int kitchenId, int restId) {
    socket.emitWithAck("subsribeToResturnatKitchenOrder", kitchenId,
        ack: (data) {
      log("act $data");
    });
    return _lisienToOrder("order");
  }

  Stream<Order> lisienTResturantOrder() {
    socket.emitWithAck("subsribeToResturnatOrder", null, ack: (data) {
      log("act $data");
    });
    return _lisienToOrder("order");
  }

  Stream<Order> _lisienToOrder(String key) {
    late final StreamController<Order> controller;
    controller = StreamController<Order>(onListen: () {
      socket.on(
          key, (data) {
            final order = Order.fromJson(data);
            controller.add(order);
          });
    }, onCancel: () {
      if (socket.connected) socket.off(key);
    });

    return controller.stream;
  }
}
