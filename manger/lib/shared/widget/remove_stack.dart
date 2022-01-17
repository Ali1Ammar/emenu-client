import 'package:fluent_ui/fluent_ui.dart';

class RemoveStackWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const RemoveStackWidget(
      {Key? key, required this.child, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: IconButton(
              icon: const Icon(FluentIcons.remove), onPressed: onPressed),
        )
      ],
    );
  }
}
