import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:manger/login/user.dart';
import 'package:manger/new_rest/new_staff_value.dart';
import 'package:manger/shared/dialog.dart';
import 'package:manger/shared/form_validator.dart';
import 'package:shared/shared.dart';

class CreateStaffWidget extends HookWidget {
  final void Function(NewStaffDto data) onDone;
  final VoidCallback onCancel;
  const CreateStaffWidget(
      {Key? key, required this.onDone, required this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final set = useSetHook<UserPermissions>();
    final item = useMemoized(() => NewStaff());
    return Center(
      child: Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints(maxWidth: 500),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormBox(
                header: "اسم الموضف",
                validator: FormValidator.required,
                onChanged: (v) {
                  item.name = v;
                },
              ),
              TextFormBox(
                header: "اسم مستخدم باللغة انكليزية وبدون مسافات",
                validator:
                    FormValidator.required,
                onChanged: (v) {
                  item.userName = v;
                },
              ),
              TextFormBox(
                header: "كلمة السر",
                validator: FormValidator.password,
                onChanged: (v) {
                  item.password = v;
                },
              ),
              const Text("الصلاحيات"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [
                    ...resturnatPermissions.map((e) => Checkbox(
                    checked: set.contains(e),
                    content: Text(e.ar),
                    onChanged: (_) {
                      set.toggle(e);
                    })),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Button(
                        child: const Text("انشاء"),
                        onPressed: () {
                          item.permission = set.set.toList();
                          if (!formKey.currentState!.validate() ||
                              item.permission.isEmpty) {
                            showErrorDialog("please fill all the field", context);
                            return;
                          }

                          onDone(NewStaffDto(
                              name: item.name!,
                              userName: item.userName!,
                              password: item.password!,
                              permissons: item.permission));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Button(child: const Text("الغاء"), onPressed: onCancel),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
