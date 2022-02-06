import 'package:fluent_ui/fluent_ui.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageHeader(
      commandBar: SizedBox(
        width: 400,
        child: TextBox(
          maxLines: 1,
          suffix: Icon(FluentIcons.search),
        ),
      ),
      leading: IconButton(
        icon: Icon(FluentIcons.back)  ,
        onPressed: (){
        Navigator.pop(context);
      },) ,
      title: Text(title),
    );
  }
}
