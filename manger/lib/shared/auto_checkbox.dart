import 'package:fluent_ui/fluent_ui.dart';

class AutoCheckbox extends StatefulWidget {
  const AutoCheckbox({Key? key}) : super(key: key);

  @override
  State<AutoCheckbox> createState() => _AutoCheckboxState();
}

class _AutoCheckboxState extends State<AutoCheckbox> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checked: isCheck,
      onChanged: (value) {
        setState(() {
          isCheck = value!;
        });
      },
    );
  }
}
