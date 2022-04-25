import 'package:flutter/material.dart';
import 'package:customer/main/auto_router.dart';
import 'package:customer/main/material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final s = await SharedPreferences.getInstance();
  final _appRouter = AppRouter();

  runApp(MainApp(
    configDto: StartConfigDto(s, _appRouter),
  ));
}

class StartConfigDto {
  final SharedPreferences sharedPreferences;
  final AppRouter router;

  StartConfigDto(this.sharedPreferences, this.router);
}
