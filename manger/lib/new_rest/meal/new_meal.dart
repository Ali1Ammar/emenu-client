import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/meal/meal_mange_controller.dart';
import 'package:manger/new_rest/meal/new_meal_value.dart';
import 'package:manger/shared/service/add_to_rest_service.dart';
import 'package:manger/shared/widget/img_picker.dart';
import 'package:manger/shared/widget/loadind.dart';
import 'package:shared/shared.dart';

class CreateMealWidget extends HookConsumerWidget {
  // final List<MainCategory> category;
  // final List<Kitchen> kitchen;
  const CreateMealWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rest = ref.watch(currentLinkedResturant);
    final _value = useState(NewMealValue());
    final mainCateSelect = useState<MainCategory?>(null);
    final subCateSelect = useState<SubCategory?>(null);
    final kitchenSelect = useState<Kitchen?>(null);
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
        TextFormBox(
          header: "السعر",
          onChanged: (val) {
            value.price = double.parse(val);
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
        FilledButton(
            child: Text("اضافة"),
            onPressed: () {
              ref.read(mealMangerControllerProvider.notifier).addMeal(value);
            })
      ],
    );
  }
}
