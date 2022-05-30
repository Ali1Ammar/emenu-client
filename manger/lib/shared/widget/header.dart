import 'package:fluent_ui/fluent_ui.dart';
import 'package:manger/shared/widget/back_button.dart';

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
          // const SizedBox(
          //   width: 400,
          //   child: TextBox(
          //     maxLines: 1,
          //     suffix: Icon(FluentIcons.search),
          //   ),
          // ),
        ],
      ),
      leading: const FluentBackButton(),
      title: Text(title),
    );
  }
}
