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
  final VoidCallback? onCancel;
  const CreateMealWidget({Key? key, this.oldDto, this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final old = oldDto?.old;
    final rest = ref.watch(currentLinkedResturant);
    final _value = useState(NewMealValue());
    final mainCateSelect = useState<MainCategory?>(oldDto?.mainCategory);
    final subCateSelect = useState<SubCategory?>(oldDto?.subCategory);
    final kitchenSelect = useState<Kitchen?>(oldDto?.kitchen);
    final GlobalKey<ListAddWidgetState> listExtraKey =
        useMemoized(() => GlobalKey());
    if (!rest.isData) {
      return const CenterLoading();
    }
    final category = rest.value!.mainCategory;
    final kitchen = rest.value!.kitchen;
    final value = _value.value;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Card(
            child: Column(
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImagePicker(onPicker: (val) {
                    value.img = val?.paths.first;
                  }),
                ),
                TextFormBox(
                  header: "السعر",
                  placeholder: "15000",
                  initialValue: old?.price.toString(),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9.,]+'))
                  ],
                  keyboardType: TextInputType.number,
                  onChanged: (val) {
                    value.price = double.tryParse(val);
                  },
                ),
                Row(
                  children: [
                    const Text("المطبخ"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Combobox<Kitchen>(
                          value: kitchenSelect.value,
                          onChanged: (val) {
                            kitchenSelect.value = val!;
                            value.kitchenId = val.id;
                          },
                          items: kitchen
                              .map((e) =>
                                  ComboboxItem(value: e, child: Text(e.name)))
                              .toList()),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text("التصنيف"),
                    Combobox<MainCategory>(
                        value: mainCateSelect.value,
                        onChanged: (val) {
                          mainCateSelect.value = val!;
                          subCateSelect.value = null;
                        },
                        items: category
                            .map((e) =>
                                ComboboxItem(value: e, child: Text(e.title)))
                            .toList()),
                    if (mainCateSelect.value != null) ...[
                      const Text("التصنيف الفرعي"),
                      Combobox<SubCategory>(
                          value: subCateSelect.value,
                          onChanged: (val) {
                            subCateSelect.value = val;
                            value.subCategoryId = val!.id;
                          },
                          items: mainCateSelect.value!.children
                              .map((e) =>
                                  ComboboxItem(value: e, child: Text(e.title)))
                              .toList())
                    ],
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("اضافات / مثلا / ازاله البصل",
                              textAlign: TextAlign.start),
                        ),
                        ListAddWidget(
                          initValues: old?.extra,
                          key: listExtraKey,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FilledButton(
                          child: const Text("اضافة"),
                          onPressed: () {
                            value.extra = listExtraKey.currentState!.list
                                .map((e) => e.text)
                                .toList();
                            if (oldDto != null) {
                              if (value.isAllNull) {
                                showErrorDialog(
                                    "جميع العناصر لم يتم تغيرها", context);
                                return;
                              }
                              ref
                                  .read(mealMangerControllerProvider.notifier)
                                  .editMealDone(value);
                            } else {
                              if (value.isAnyRequiredNull) {
                                showErrorDialog(
                                    "رجاء ملئ جميع الحقول", context);
                                return;
                              }
                              ref
                                  .read(mealMangerControllerProvider.notifier)
                                  .addMeal(value);
                            }
                          }),
                      if (onCancel != null) ...[
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                            child: const Text("الغاء"), onPressed: onCancel)
                      ]
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
