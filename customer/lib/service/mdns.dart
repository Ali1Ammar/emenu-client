// // Copyright 2013 The Flutter Authors. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.

// // Example script to illustrate how to use the mdns package to discover the port
// // of a Dart observatory over mDNS.

// import 'dart:io';

// import 'package:multicast_dns/multicast_dns.dart';

// Future<String> mDnsQueryIp([String name = "example.local"]) async {
  
//   Future<RawDatagramSocket> factory(dynamic host, int port,
//       {bool reuseAddress = false, bool reusePort = false, int ttl = 1}) {
//     return RawDatagramSocket.bind(host, port,
//         reuseAddress: true, reusePort: false, ttl: ttl);
//   }

//   var client = MDnsClient(rawDatagramSocketFactory: factory);

//   await client.start();
//   final lookupString = client
//       .lookup<IPAddressResourceRecord>(ResourceRecordQuery.addressIPv4(name));
//   final res = await lookupString.first;

//   client.stop();
//   return res.address.address;
// }
