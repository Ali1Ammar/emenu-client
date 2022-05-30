
import 'package:fluent_ui/fluent_ui.dart';

class FluentBackButton extends StatelessWidget {
  const FluentBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: IconButton(
        icon: const Icon(FluentIcons.forward, size: 20),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
