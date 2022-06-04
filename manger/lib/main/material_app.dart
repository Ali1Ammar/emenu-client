import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
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
        return Container(
          color: setting.mode.isDark ? Color.fromARGB(255, 65, 65, 65) :  const Color.fromARGB(255, 230, 222, 228)  ,
          child: FluentApp.router(
              routeInformationParser: configDto.router.defaultRouteParser(),
              themeMode: setting.mode,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(brightness:Brightness.light,
              scaffoldBackgroundColor:const Color.fromARGB(255, 230, 222, 228),
              
        
              ),
              locale: const Locale("ar", 'iq'),
              builder: (_, c) =>
                  Directionality(textDirection: TextDirection.rtl, child: c!),
              darkTheme: ThemeData.dark(),
              routerDelegate: configDto.router.delegate(),
              color: Colors.magenta),
        );
      }),
    );
  }
}
