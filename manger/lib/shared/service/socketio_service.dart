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
  Stream<List<Order>> lisienToKitchenOrder(int kitchenId, int restId) {
    final controller = _lisienToOrder("order");
    _emitSubscribeAndAddAck(
        "subsribeToResturnatKitchenOrder", kitchenId, controller);

    return controller.stream;
  }

  Stream<List<Order>> lisienTResturantOrder() {
    final controller = _lisienToOrder("order");
    _emitSubscribeAndAddAck("subsribeToResturnatOrder", null, controller);
    return controller.stream;
  }

  void _emitSubscribeAndAddAck(
      String key, dynamic data, StreamController<List<Order>> cont) {
    socket.emitWithAck(key, data, ack: (data) {
      cont.add((data as List).map((e) => Order.fromJson(e)).toList());
    });
  }

  StreamController<List<Order>> _lisienToOrder(String key) {
    late final StreamController<List<Order>> controller;
    controller = StreamController<List<Order>>(onListen: () {
      socket.on(key, (data) {
        final order = Order.fromJson(data);
        controller.add([order]);
      });
    }, onCancel: () {
      if (socket.connected) socket.off(key);
    });

    return controller;
  }
}
