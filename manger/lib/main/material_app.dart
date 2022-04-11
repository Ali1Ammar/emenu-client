import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manger/app_setting/setting_controller.dart';
import 'package:manger/debug/river_log.dart';
import 'package:manger/main/shared_provider.dart';

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
        return fluent.FluentApp.router(
            routeInformationParser: configDto.router.defaultRouteParser(),
            themeMode: setting.mode,
            debugShowCheckedModeBanner: false,
            theme: fluent.ThemeData(),
            locale: const fluent.Locale("ar", 'iq'),
            builder: (_, c) => Theme(
                  data: ThemeData(), //TODO
                  child: fluent.Directionality(
                      textDirection: fluent.TextDirection.rtl, child: c!),
                ),
            darkTheme: fluent.ThemeData(brightness: Brightness.dark),
            routerDelegate: configDto.router.delegate(),
            color: fluent.Colors.magenta
            );
      }),
    );
  }
}
