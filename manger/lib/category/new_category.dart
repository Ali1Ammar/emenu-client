import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/new_rest/new_category.dart';
import 'package:manger/new_rest/new_category_value.dart';
import 'package:manger/shared/widget/img_picker.dart';

class CreateCategoryWidget extends HookConsumerWidget {
  final void Function(NewCategoryValue) onDone;
  final VoidCallback onCancel;
  const CreateCategoryWidget(
      {Key? key, required this.onDone, required this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _value = useState(NewCategoryValue());
    final value = _value.value;
    return Center(
      child: Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                      child: const Text("اضافة"),
                      onPressed: () {
                        onDone(_value.value);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                      child: const Text("الغاء"),
                      onPressed: () {
                        onCancel();
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
