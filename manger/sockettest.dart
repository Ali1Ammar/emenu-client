// import 'package:socket_io_client/socket_io_client.dart';
// import 'package:socket_io_client/socket_io_client.dart' as IO;

// void main(List<String> args) {
//   // final socket = io('http://localhost:3000');
//   // log("done create");
//   // socket.on('msgToClient', (message) => {log("reciverd " + message)});
//   // log("done socket");

//   // socket.emit('msgToServer', 'dsds');
//   // log("done emit");

//   IO.Socket socket = IO.io(
//       'http://localhost:3000',
//       OptionBuilder().setTransports(['websocket']) // for Flutter or Dart VM
//           .setExtraHeaders({'foo': 'bar'}) // optional
//           .build());
//   socket.emit('msgToServer', 'dsds');

//   socket.onConnect((_) {
//     log('connect');
//     socket.emit('msgToServer', 'dsds');
//   });
//   socket.on('event', (data) => log(data));
//   socket.on('msgToClient', (message) => {log("reciverd " + message)});
//   socket.onDisconnect((_) => log('disconnect'));
//   socket.on('fromServer', (_) => log(_));
// }

import 'package:shared/shared.dart';
import 'package:socket_io_client/socket_io_client.dart';

main() {
  final socket = io(
    'http://localhost:3000',
    {
      'transports': ['websocket'],
      'pingTimeout': 5000,
      'connectTimeout': 5000,
      'pingInterval': 5000,
      'forceNew': true,
      // 'extraHeaders': <String, String>{
      //   'authorization':
      //       "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTIsInVzZXJOYW1lIjoiYWRtaW4yIiwibmFtZSI6ImFkbWluMiIsInBlcm1pc3NvbnMiOlsiUmVzdHVyYW50QWRtaW4iXSwicmVzdHVyYW50SWQiOjE4LCJ0eXBlIjowLCJpYXQiOjE2NDQxODI5MjUsImV4cCI6MTY0NDQ0MjEyNX0.DtQsN1_wikeeRXdPKDZEmVh3FlzAbBsf0HlY2PCqGr8"
      // },
    },
  );

  for (var element in [
    'connect',
    'connect_error',
    'connect_timeout',
    'connecting',
    'disconnect',
    'error',
    'reconnect',
    'reconnect_attempt',
    'reconnect_failed',
    'reconnect_error',
    'reconnecting',
    'ping',
    'pong',
    "order"
  ]) {
    socket.on(element, (data) => log("logevent $element $data"));
  }
  socket.emit("CustomerOrder");
}
