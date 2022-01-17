import 'package:fluent_ui/fluent_ui.dart' as f;
import 'package:flutter/material.dart';
import 'package:manger/new_rest/new_rest_value.dart';
import 'package:manger/shared/form_validator.dart';

class AdminAccountInput extends StatefulWidget {
  final NewResturantValue resturantValue;
  const AdminAccountInput(this.resturantValue, {Key? key}) : super(key: key);

  @override
  State<AdminAccountInput> createState() => _AdminAccountInputState();
}

class _AdminAccountInputState extends State<AdminAccountInput> {
  @override
  Widget build(BuildContext context) {
    final row = Row(
      children: [
        const Text("مدير المطعم : "),
        Tooltip(
          message:
              "كل حساب يمكن ان يربط مع مطعم واحد فقط , اذا كان لديك مطعم واحد لا مانع من ربط لكن اذا اردت اضافة مطاعم اخرى الافضل ان يكون لكل مطعم مدير",
          child: f.Checkbox(
            checked: widget.resturantValue.linkWithLoggedAccount,
            onChanged: (v) {
              widget.resturantValue.linkWithLoggedAccount = v!;
              setState(() {});
            },
            content: const Text("الربط مع حسابك نفسة"),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
    if (widget.resturantValue.linkWithLoggedAccount) return row;

    final item = widget.resturantValue.admins;

    return Column(
      children: [
        row,
        f.TextFormBox(
          header: "اسم المدير",
          validator: FormValidator.required,
          onChanged: (v) {
            item.name = v;
          },
        ),
        f.TextFormBox(
          header: "اسم مستخدم باللغة انكليزية وبدون مسافات",
          validator: FormValidator.required, //TODO check if its used before
          onChanged: (v) {
            item.userName = v;
          },
        ),
        f.TextFormBox(
          header: "كلمة السر",
          validator: FormValidator.password,
          onChanged: (v) {
            item.password = v;
          },
        ),
      ],
    );
  }
}
