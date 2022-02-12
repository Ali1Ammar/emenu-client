import 'package:fluent_ui/fluent_ui.dart';
import 'package:manger/shared/widget/button_icon.dart';

class ListAddWidget extends StatefulWidget {
  final void Function(List<String> list) onEdit;
  const ListAddWidget({Key? key, required this.onEdit}) : super(key: key);

  @override
  _ListAddWidgetState createState() => _ListAddWidgetState();
}

class _ListAddWidgetState extends State<ListAddWidget> {
  List<TextEditingController> list = [TextEditingController()];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...list.map((cont) => TextBox(
              controller: cont,
              onEditingComplete: (){
                                    widget.onEdit(list.map((e) => e.text).toList());
              },
              outsideSuffix: IconButton(
                  icon: Icon(FluentIcons.remove),
                  onPressed: () {
                    setState(() {
                      list.remove(cont);
                    });
                  }),
            )),
        Row(
          children: [
            IconButton(
                icon: Icon(FluentIcons.add),
                onPressed: () {
                  setState(() {
                    list.add(TextEditingController());
                  });
                })
          ],
        ),
        // ButtonIcon(
        //     onPressed: () =>
        //         widget.onEdit(list.map((e) => e.text).toList()),
        //     icon: Icon(FluentIcons.save),
        //     child: Text("اضافى"))
      ],
    );
  }
}
