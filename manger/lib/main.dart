import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:manger/main/auto_router.dart';
import 'package:manger/main/material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final s = await SharedPreferences.getInstance();
  final _appRouter = AppRouter();
  if (Platform.isAndroid || Platform.isIOS) {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
  }
  runApp(MainApp(
    configDto: StartConfigDto(s, _appRouter),
  ));
}

class StartConfigDto {
  final SharedPreferences sharedPreferences;
  final AppRouter router;

  StartConfigDto(this.sharedPreferences, this.router);
}
