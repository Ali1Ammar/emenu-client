import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/meal/meal_mange_controller.dart';
import 'package:manger/meal/meal_mange_state.dart';
import 'package:manger/new_rest/meal/new_meal_value.dart';
import 'package:manger/shared/dialog.dart';
import 'package:manger/shared/widget/img_picker.dart';
import 'package:manger/shared/widget/list_adder.dart';

import 'package:shared/shared.dart';

class CreateMealWidget extends HookConsumerWidget {
  final OldEditMealDto? oldDto;
  const CreateMealWidget({Key? key, this.oldDto}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final old = oldDto?.old;
    final rest = ref.watch(currentLinkedResturant);
    final _value = useState(NewMealValue());
    final mainCateSelect = useState<MainCategory?>(oldDto?.mainCategory);
    final subCateSelect = useState<SubCategory?>(oldDto?.subCategory);
    final kitchenSelect = useState<Kitchen?>(oldDto?.kitchen);
    final GlobalKey<ListAddWidgetState> listExtraKey = useMemoized(()=>GlobalKey());
    if (!rest.isData) {
      return const CenterLoading();
    }
    final category = rest.value!.mainCategory;
    final kitchen = rest.value!.kitchen;
    final value = _value.value;
    return Column(
      children: [
        const Text("اضافة وجبة جديدة"),
        TextFormBox(
          header: "العنوان",
          initialValue: old?.title,
          onChanged: (val) {
            value.title = val;
          },
        ),
        TextFormBox(
          header: "الوصف",
          initialValue: old?.desc,
          onChanged: (val) {
            value.desc = val;
          },
        ),
        ImagePicker(onPicker: (val) {
          value.img = val?.paths.first;
        }),
        TextFormBox(
          header: "السعر",
          initialValue: old?.price.toString(),
          inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')) ],
          keyboardType: TextInputType.number,
          onChanged: (val) {
            value.price = double.tryParse(val);
          },
        ),
        Combobox<Kitchen>(
            value: kitchenSelect.value,
            onChanged: (val) {
              kitchenSelect.value = val!;
              value.kitchenId = val.id;
            },
            items: kitchen
                .map((e) => ComboboxItem(value: e, child: Text(e.name)))
                .toList()),
        Combobox<MainCategory>(
            value: mainCateSelect.value,
            onChanged: (val) {
              mainCateSelect.value = val!;
            },
            items: category
                .map((e) => ComboboxItem(value: e, child: Text(e.title)))
                .toList()),
        if (mainCateSelect.value != null)
          Combobox<SubCategory>(
              value: subCateSelect.value,
              onChanged: (val) {
                subCateSelect.value = val;
                value.subCategoryId = val!.id;
              },
              items: mainCateSelect.value!.children
                  .map((e) => ComboboxItem(value: e, child: Text(e.title)))
                  .toList()),
        const Text("اضافات / مثلا / ازاله البصل"),
        ListAddWidget(
          initValues: old?.extra,
          key: listExtraKey,
          // onEdit: (list) {
          //   _value.value.extra = list;
          // }
        ),
        FilledButton(
            child: const Text("اضافة"),
            onPressed: () {
              value.extra =
                  listExtraKey.currentState!.list.map((e) => e.text).toList();
              if (oldDto != null) {
                if (value.isAllNull) {
                  showErrorDialog("جميع العناصر لم يتم تغيرها", context);
                  return;
                }
                ref
                    .read(mealMangerControllerProvider.notifier)
                    .editMealDone(value);
              } else {
                if (value.isAnyRequiredNull) {
                  showErrorDialog("رجاء ملئ جميع الحقول", context);
                  return;
                }
                ref.read(mealMangerControllerProvider.notifier).addMeal(value);
              }
            })
      ],
    );
  }
}
