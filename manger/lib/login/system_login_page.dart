import 'package:flutter/widgets.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/login/login_controller.dart';
import 'package:shared/shared.dart';

class SystemLoginPage extends ConsumerWidget {
  const SystemLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cont = ref.watch(loginControllerProvider);

    return fluent.ScaffoldPage(
      header: fluent.PageHeader(
          title: const Text(" نظام المينو الالكتروني"),
          commandBar: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              fluent.IconButton(
                icon: const Icon(fluent.FluentIcons.edit),
                // label: const Text('Add'),
                onPressed: () {
                  fluent.showDialog(
                    context: context,
                    builder: (context) {
                      return fluent.ContentDialog(
                          title: const Text("تغير الدومين"),
                          content: ChangeUrlWidget(
                            okButtonBuilder: (callback) => fluent.Button(
                    onPressed: callback,
                    child: const Text("تغيير")),
                            textFieldBuilder: (cont) => fluent.TextBox(
                              controller: cont,
                            ),
                          ));
                    },
                  );
                },
              ),
            ],
          )),
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
                child: const Text("تسجيل دخول"),
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
