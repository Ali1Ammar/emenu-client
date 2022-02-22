import 'dart:async';

import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';
import 'package:socket_io_client/socket_io_client.dart';

final socketIoServiceProvider =
    Provider.autoDispose.family<SocketIoService, String>((_, token) {
  final socket = io(
    baseUrl,
    {
      'transports': ['websocket'],
      'pingTimeout': 5000,
      'connectTimeout': 5000,
      'pingInterval': 5000,
      'extraHeaders': <String, String>{
        'authorization': token,
      },
      'forceNew': true
    },
  )..onConnect((data) {
      log("Conntected $data");
    });
  socket.connect();
  socket.onDisconnect((data){
          log("DiConntected $data");

  });
  _.onDispose(() {
    socket.dispose();
  });
  return SocketIoService(
    _.read,
    socket,
  );
});

class SocketIoService {
  final Socket socket;
  final Reader read;

  SocketIoService(this.read, this.socket);

  Stream<OrderChange> lisienToOrderChange() {
    socket.emitWithAck('CustomerOrder', null, ack: (d) {
      print("act $d");
    });
    late final StreamController<OrderChange> controller;
    controller = StreamController<OrderChange>(onListen: () {
      socket.on("order-change", (data) {
        print("order-change");

        final order = OrderChange.fromJson(data);
        controller.add(order);
      });
    }, onCancel: () {
      if (socket.connected) socket.off("order-change");
    });

    return controller.stream;
  }
}
