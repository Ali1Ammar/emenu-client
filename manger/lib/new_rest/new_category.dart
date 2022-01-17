import 'package:fluent_ui/fluent_ui.dart';
import 'package:manger/new_rest/new_category_value.dart';
import 'package:manger/shared/widget/img_picker.dart';
import 'package:manger/shared/widget/remove_stack.dart';

class CreateCategoryWidget extends StatelessWidget {
  final bool isMain;
  final NewCategoryValue value;
  const CreateCategoryWidget(
      {Key? key, required this.isMain, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormBox(
          header: "الاسم",
          onChanged: (val) {
            value.name = val;
          },
        ),
        TextFormBox(
          header: "الوصف",
          onChanged: (val) {
            value.desc = val;
          },
        ),
        ImagePicker(onPicker: (val) {
          value.img = val?.paths.first;
        }),
        CreateSubCategoryWidget(
          values: value.children,
        ),
      ],
    );
  }
}

class CreateSubCategoryWidget extends StatefulWidget {
  final List<String> values;
  const CreateSubCategoryWidget({Key? key, required this.values})
      : super(key: key);

  @override
  _CreateSubCategoryWidgetState createState() =>
      _CreateSubCategoryWidgetState();
}

class _CreateSubCategoryWidgetState extends State<CreateSubCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("تصنيفات فرعية"),
            IconButton(
                icon: const Icon(FluentIcons.add),
                onPressed: () {
                  widget.values.add("");
                })
          ],
        ),
        for (var i = 0; i < widget.values.length; i++)
          Builder(builder: (context) {
            return RemoveStackWidget(
              onPressed: () {
                widget.values.removeAt(i);
              },
              child: TextFormBox(
                header: "اسم تصنيف فرعي",
                onChanged: (v) {
                  widget.values[i] = v;
                },
              ),
            );
          })
      ],
    );
  }
}
