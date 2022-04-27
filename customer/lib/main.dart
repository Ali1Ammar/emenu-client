import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:customer/main/auto_router.dart';
import 'package:customer/main/material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:device_preview/device_preview.dart';
import 'package:device_preview_screenshot/device_preview_screenshot.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final s = await SharedPreferences.getInstance();
  final _appRouter = AppRouter();

  runApp(DevicePreview(
    enabled: !kReleaseMode || !Platform.isAndroid || !Platform.isIOS,
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


