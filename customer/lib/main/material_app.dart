import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:customer/app_setting/setting_controller.dart';
import 'package:customer/debug/river_log.dart';
import 'package:customer/main/shared_provider.dart';

import '../main.dart';
import 'auto_router.dart';

class MainApp extends StatelessWidget {
  final StartConfigDto configDto;
  const MainApp({Key? key, required this.configDto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [if (kDebugMode) RiverLogger()],
      overrides: [
        autoRouteProvider.overrideWithValue(configDto.router),
        sharedPrefProvider.overrideWithValue(configDto.sharedPreferences)
      ],
      child: Consumer(builder: (context, ref, _) {
        final setting = ref.watch(settingProvider);
        return MaterialApp.router(
            useInheritedMediaQuery: true,
            routeInformationParser: configDto.router.defaultRouteParser(),
            themeMode: setting.mode,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.from(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
            darkTheme: ThemeData(brightness: Brightness.dark),
            locale: const Locale("ar", 'iq'),
            builder: (_, c) => Directionality(
                textDirection: TextDirection.rtl, child: DevicePreview.appBuilder(_,c) ),
            routerDelegate: configDto.router.delegate(),
            color: Colors.deepPurple);
      }),
    );
  }
}
