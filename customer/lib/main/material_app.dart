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
            routeInformationParser: configDto.router.defaultRouteParser(),
            themeMode: setting.mode,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(),
            locale: Locale("ar", 'iq'),
            builder: (_, c) => Theme(
                  data: ThemeData.dark(), 
                  child: Directionality(
                      textDirection: TextDirection.rtl, child: c!),
                ),
            darkTheme: ThemeData(brightness: Brightness.dark),
            routerDelegate: configDto.router.delegate(),
            color: Colors.purple );
      }),
    );
  }
}
