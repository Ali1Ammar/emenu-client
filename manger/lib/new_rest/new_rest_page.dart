import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/login/login_controller.dart';
import 'package:manger/login/login_provider.dart';
import 'package:manger/main/auto_router.dart';
import 'package:manger/new_rest/new_rest_value.dart';
import 'package:manger/new_rest/widget/admin_account.dart';
import 'package:manger/shared/dialog.dart';
import 'package:manger/shared/form_validator.dart';
import 'package:manger/shared/service/resturnat_service.dart';
import 'package:manger/shared/widget/img_picker.dart';

class NewResturantPage extends HookConsumerWidget {
  const NewResturantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final formKey = useMemoized(valueBuilder) GlobalKey<FormState>();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final picture = useState<FilePickerResult?>(null);
    final newRestVal = useState(NewResturantValue());

    return ScaffoldPage(
      header: const PageHeader(
        title: Text("انشاء مطعم جديد"),
      ),
      content: Form(
        key: formKey,
        child: ListView(
          children: [
            TextFormBox(
              header: "اسم المطعم",
              validator: FormValidator.required,
              onChanged: (val) {
                newRestVal.value.name = val;
              },
            ),
            TextFormBox(
              header: "الموقع",
              validator: FormValidator.required,
              onChanged: (val) {
                newRestVal.value.location = val;
              },
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ImagePicker(
                  onPicker: (val) {
                    picture.value = val;
                  },
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AdminAccountInput(newRestVal.value),
            ),
            FilledButton(
              child: const Text("انشاء"),
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  final link = newRestVal.value.linkWithLoggedAccount;
                  final admin = newRestVal.value.admins;
                  final _admin = link
                      ? null
                      : NewAdminDto(
                          name: admin.name!,
                          userName: admin.userName!,
                          password: admin.password!,
                        );
                  var createResturantDto = CreateResturantDto(
                    name: newRestVal.value.name!,
                    location: newRestVal.value.location!,
                    img: picture.value!.files.first.path!, //TODO validat
                  );
                  var newResturantDto = NewResturantDto(
                      resturant: createResturantDto,
                      admin: _admin,
                      adminsId: newRestVal.value.linkWithLoggedAccount
                          ? ref.read(loginProvider)!.user.id
                          : null);
                  try {
                    await ref
                        .read(resturantServiceProvider)
                        .createResturant(newResturantDto);

                    if (link) {
                      await ref.read(loginControllerProvider).refresh();
                    }

                    ref.read(autoRouteProvider).replace(const HomePageRoute());
                  } catch (e) {
                    showErrorDialog(e, context);
                  }
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
