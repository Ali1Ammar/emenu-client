import 'package:customer/select_order/select_meal/select_meal_controller.dart';
import 'package:customer/select_order/select_order_controller.dart';
import 'package:customer/shared/context_helper.dart';
import 'package:customer/widget/fade_widget.dart';
import 'package:customer/widget/meal_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_state_notifier/hooks_state_notifier.dart';
import 'package:shared/shared.dart';

class SelectMealSubCategory extends HookConsumerWidget {
  final SubCategory subCategory;
  const SelectMealSubCategory({Key? key, required this.subCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subCategoryMeals = ref.watch(subCategoryMealsMapController);

    final cont = subCategoryMeals.getController(subCategory);
    final state = useStateNotifier(cont);
    return state.map<Widget>(loadingMeal: (_) {
      return const SizedBox(height: 300, width: 300, child: CenterLoading());
    }, loaded: (loaded) {
      final isExp = loaded.isChecked;
      // final state =
      //     isExp ? CrossFadeState.showSecond : CrossFadeState.showFirst;
      return Column(children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subCategory.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              loaded.meals.isEmpty
                  ? const Text("لا وجبات حاليا")
                  : IconButton(
                      onPressed: () {
                        cont.toggle();
                      },
                      icon: Icon(isExp ? Icons.expand_more : Icons.expand_less))
            ],
          ),
        ),
        FadeWidget(
            isFade: !isExp,
            child: Column(
              children: loaded.meals
                  .map((e) => InkWell(
                        onTap: () {
                          context.riverpod
                              .read(selectOrderControllerProvider.notifier)
                              .selectMeal(e, subCategory);
                        },
                        child: MealCard(
                          meal: e,
                        ),
                      ))
                  .toList(),
            ))
      ]);
    });
  }
}
