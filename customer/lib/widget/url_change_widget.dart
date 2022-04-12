

import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class ChangeUrlIconWidget extends StatelessWidget {
  const ChangeUrlIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
              title: const Text("تغير الدومين"),
              content: ChangeUrlWidget(
                okButtonBuilder: (callback) => TextButton.icon(
                    onPressed: callback,
                    icon: const Icon(Icons.check),
                    label: const Text("تغيير")),
                textFieldBuilder: (cont) => TextField(
                  controller: cont,
                  textDirection: TextDirection.ltr,
                ),
              )),
        );
      },
    );
  }
}