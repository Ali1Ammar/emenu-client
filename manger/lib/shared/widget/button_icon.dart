import 'package:fluent_ui/fluent_ui.dart';

class ButtunIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final Widget child;
  const ButtunIcon({Key? key,required this.onPressed,required this.icon,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Button(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [icon,child],
      ),
      onPressed: onPressed,
    );
  }
}
