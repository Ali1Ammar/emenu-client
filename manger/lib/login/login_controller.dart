import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/login/login_provider.dart';
import 'package:manger/login/login_service.dart';
import 'package:manger/main/auto_router.dart';
import 'package:manger/shared/dialog.dart';

final loginControllerProvider =
    ChangeNotifierProvider.autoDispose<LoginControllerr>((ref) {
  return LoginControllerr(ref.read, ref.watch(loginServiceProvider));
});

class LoginControllerr extends ChangeNotifier {
  final Reader read;
  final LoginService service;
  LoginControllerr(this.read, this.service) {
    // //TODO Debuging only
    username = "admin2";
    password = "admin";
    pressLogin();
  }

  String? _username;
  String? _password;
  set username(v) {
    _username = v;
    notifyListeners();
  }

  set password(v) {
    _password = v;
    notifyListeners();
  }

  bool get showButton => _username != null && _password != null;

  pressLogin() async {
    try {
      final data = await service.login(_username!, _password!);
      read(loginProvider.notifier).state = data;
      read(autoRouteProvider).replace(const HomePageRoute());
    } catch (e) {
      if (e is DioError && e.message == "check server connection") {
        showErrorDialogViaRead(
            "مشكلة في الاتصال في الشبكة الرجاء التاكد من الاتصال\n, الرجاء التاكد من تشغيل السيرفر وضبط الip من علامة التعديل في زاويه اعلاه",
            read);
      } else {
        showErrorDialogViaRead(e, read);
        rethrow;
      }
    }
  }

  refresh() async {
    try {
      final data = await service.refresh();
      read(loginProvider.notifier).state = data;
    } catch (e) {
      showErrorDialogViaRead(e, read);
    }
  }
}
