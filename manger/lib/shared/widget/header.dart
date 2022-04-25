import 'package:fluent_ui/fluent_ui.dart';

class Header extends StatelessWidget {
  final String title;
  final List<Widget> icons;
  const Header({Key? key, required this.title, this.icons = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageHeader(
      commandBar: Row(
        children: [
          ...icons,
          const SizedBox(
            width: 400,
            child: TextBox(
              maxLines: 1,
              suffix: Icon(FluentIcons.search),
            ),
          ),
        ],
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: IconButton(
          icon: const Icon(FluentIcons.forward, size: 20),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      title: Text(title),
    );
  }
}
