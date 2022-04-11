import 'package:fluent_ui/fluent_ui.dart';

class ListAddWidget extends StatefulWidget {
  final List<String>? initValues;
  const ListAddWidget({Key? key, this.initValues})
      : super(key: key);

  @override
  ListAddWidgetState createState() => ListAddWidgetState();
}

class ListAddWidgetState extends State<ListAddWidget> {
  late List<TextEditingController> list;

  @override
  void initState() {
    if (widget.initValues != null) {
      list = widget.initValues!
          .map((e) => TextEditingController(text: e))
          .toList();
    } else {
      list = [TextEditingController()];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...list.map((cont) => TextBox(
              controller: cont,
              outsideSuffix: IconButton(
                  icon: const Icon(FluentIcons.remove),
                  onPressed: () {
                    setState(() {
                      list.remove(cont);
                    });
                  }),
            )),
        Row(
          children: [
            IconButton(
                icon: const Icon(FluentIcons.add),
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
