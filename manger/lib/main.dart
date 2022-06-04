import 'dart:io';

import 'package:device_preview_screenshot/device_preview_screenshot.dart';
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
  runApp(DevicePreview(
    enabled:   !Platform.isAndroid ,
        tools: [
        ...DevicePreview.defaultTools,
        DevicePreviewScreenshot(
          onScreenshot: screenshotAsFiles(Directory("${Directory.current.path}/screenshot") ),
        ),
    ],
    builder: (context) => MainApp(
      configDto: StartConfigDto(s, _appRouter),
    ),
  ));
}

class StartConfigDto {
  final SharedPreferences sharedPreferences;
  final AppRouter router;

  StartConfigDto(this.sharedPreferences, this.router);
}
