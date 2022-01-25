import 'package:flutter/widgets.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/login/login_controller.dart';

class SystemLoginPage extends ConsumerWidget {
  const SystemLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cont = ref.watch(loginControllerProvider);

    return fluent.ScaffoldPage(
      header: const fluent.PageHeader(
        title: Text(" نظام المينو الالكتروني"),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            const Text("رجاء تسجيل دخول لبدء الاعداد"),
            fluent.TextBox(
              header: "اسم المتسخدم",
              onChanged: (v) {
                cont.username = v;
              },
            ),
            fluent.TextBox(
              header: "كلمة المرور",
              onChanged: (v) {
                cont.password = v;
              },
            ),
            if (cont.showButton)
              fluent.FilledButton(
                child: Text("تسجيل دخول"),
                onPressed: () {
                  cont.pressLogin();
                },
              )
          ],
        ),
      ),
    );
  }
}
