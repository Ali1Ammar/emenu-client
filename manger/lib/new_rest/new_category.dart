import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/home/home_controller.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/new_rest/new_category_value.dart';
import 'package:manger/shared/service/add_to_rest_service.dart';
import 'package:manger/shared/widget/img_picker.dart';
import 'package:manger/shared/widget/remove_stack.dart';

class CreateCategoryWidget extends HookConsumerWidget {
  const CreateCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _value = useState(NewCategoryValue());
    final value = _value.value;
    return Column(
      children: [
        const Text("اضافة تصنيف جديد"),
        TextFormBox(
          header: "الاسم",
          onChanged: (val) {
            value.title = val;
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
        FilledButton(
            child: Text("اضافة"),
            onPressed: () {
              ref.read(resturnatHomeControllerProvider).addToResturant(() =>
                  ref.read(addResturantServiceProvider).addCategorty(value));
            })
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
                  setState(() {});
                })
          ],
        ),
        for (var i = 0; i < widget.values.length; i++)
          Builder(builder: (context) {
            return RemoveStackWidget(
              onPressed: () {
                widget.values.removeAt(i);
                setState(() {});
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
