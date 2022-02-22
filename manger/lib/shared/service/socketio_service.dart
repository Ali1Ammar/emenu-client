import 'dart:async';

import 'package:manger/login/login_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:tuple/tuple.dart';

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
  Tuple2<Stream<List<Order>>, Stream<OrderChange>> lisienToKitchenOrder(
      int kitchenId, int restId) {
    final controller = _lisienToOrder("order");
    final controllerOrderChange = _lisienToOrderChange();

    _emitSubscribeAndAddAck(
        "subsribeToResturnatKitchenOrder", kitchenId, controller);

    return Tuple2(controller.stream, controllerOrderChange.stream);
  }

  Tuple2<Stream<List<Order>>, Stream<OrderChange>> lisienTResturantOrder() {
    final controller = _lisienToOrder("order");
    final controllerOrderChange = _lisienToOrderChange();
    _emitSubscribeAndAddAck("subsribeToResturnatOrder", null, controller);
    return Tuple2(controller.stream, controllerOrderChange.stream);
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

  StreamController<OrderChange> _lisienToOrderChange() {
    late final StreamController<OrderChange> controller;
    controller = StreamController<OrderChange>(onListen: () {
      socket.on("order-change", (data) {
        final order = OrderChange.fromJson(data);
        controller.add(order);
      });
    }, onCancel: () {
      if (socket.connected) socket.off("order-change");
    });

    return controller;
  }
}
