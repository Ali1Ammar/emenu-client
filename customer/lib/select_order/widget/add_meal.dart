import 'package:customer/select_order/select_order_controller.dart';
import 'package:customer/select_order/select_order_state.dart';
import 'package:customer/shared/context_helper.dart';
import 'package:customer/shared/set_hook.dart';
import 'package:customer/widget/meal_card.dart';
import 'package:customer/widget/number_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared/shared.dart';

class AddMealWidget extends HookWidget {
  final Meal meal;
  final MainCategory category;
  final SubCategory subCategory;
  const AddMealWidget(
      {Key? key,
      required this.meal,
      required this.category,
      required this.subCategory})
      : super(key: key);
  factory AddMealWidget.fromFlow(AddMeal flow) => AddMealWidget(
      meal: flow.meal,
      category: flow.mainCategory,
      subCategory: flow.subCategory);
  @override
  Widget build(BuildContext context) {
    final selectedExtra = useSetHook<String>();
    final count = useState(1);
    final notes = useTextEditingController();
    return ListView(
      children: [
        MealCard(meal: meal),
        ...meal.extra.map((e) => CheckboxListTile(
              onChanged: (val) {
                if (val!) {
                  selectedExtra.add(e);
                } else {
                  selectedExtra.remove(e);
                }
              },
              value: selectedExtra.contains(e),
              title: Text(e),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: notes,
            decoration: const InputDecoration(
                hintText: "ملاحضات",
                border: OutlineInputBorder(),
                isDense: true),
          ),
        ),
        Row(
          children: [
            const Text("العدد: "),
            ButtonNumbetPicker(
              initialValue: count.value,
              minValue: 1,
              maxValue: 999,
              minDigit: 3,
              iconColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
              textPadding: const EdgeInsets.symmetric(horizontal: 4),
              step: 1,
              onChanged: (val) {
                count.value = val as int;
              },
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ElevatedButton(
                  onPressed: () {
                    context.riverpod
                        .read(selectOrderControllerProvider.notifier)
                        .addItemOrder(meal, count.value,
                            selectedExtra.set.toList(), notes.text);
                  },
                  child: const SizedBox(
                      width: double.maxFinite,
                      child: Center(child: Text("اضافة")))),
            ))
          ],
        )
      ],
    );
  }
}
