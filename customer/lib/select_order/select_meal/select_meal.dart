import 'package:customer/select_order/select_meal/select_meal_controller.dart';
import 'package:customer/select_order/select_order_controller.dart';
import 'package:customer/shared/context_helper.dart';
import 'package:customer/widget/meal_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_state_notifier/hooks_state_notifier.dart';
import 'package:shared/shared.dart';

class SelectMealWidget extends ConsumerWidget {
  final MainCategory mainCategory;
  const SelectMealWidget({Key? key, required this.mainCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subCategoryMeals = ref.watch(subCategoryMealsMapController);
    return ListView(
      children: mainCategory.children.map<Widget>((subCategroy) {
        return HookConsumer(
          builder: (context, ref, _) {
            final cont = subCategoryMeals.getController(subCategroy);
            final state = useStateNotifier(cont);
            return state.map<Widget>(loadingMeal: (_) {
              return const SizedBox(
                  height: 300, width: 300, child: CenterLoading());
            }, loaded: (loaded) {
              if (loaded.meals.isEmpty) return const SizedBox();

              final isExp = loaded.isChecked;
              return Column(children: [
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        subCategroy.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      IconButton(
                          onPressed: () {
                            cont.toggle();
                          },
                          icon: Icon(
                              isExp ? Icons.expand_more : Icons.expand_less))
                    ],
                  ),
                ),
                AnimatedCrossFade(
                  firstChild: Container(height: 0.0),
                  secondChild: Column(
                    children: loaded.meals
                        .map((e) => InkWell(
                              onTap: () {
                                context.riverpod
                                    .read(
                                        selectOrderControllerProvider.notifier)
                                    .selectMeal(e, subCategroy, mainCategory);
                              },
                              child: MealCard(
                                meal: e,
                              ),
                            ))
                        .toList(),
                  ),
                  firstCurve:
                      const Interval(0.0, 0.6, curve: Curves.fastOutSlowIn),
                  secondCurve:
                      const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn),
                  sizeCurve: Curves.fastOutSlowIn,
                  crossFadeState: isExp
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 400),
                ),
              ]);
            });
          },
        );
      }).toList(),
    );
  }
}
