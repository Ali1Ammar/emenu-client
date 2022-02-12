import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/main/auto_router.dart';
import 'package:manger/meal/meal_mange_controller.dart';
import 'package:manger/new_rest/meal/new_meal.dart';
import 'package:manger/shared/widget/header.dart';
import 'package:manger/shared/widget/loadind.dart';
import 'package:manger/shared/widget/meal_card.dart';

class MealMangePage extends ConsumerWidget {
  const MealMangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mealMangerControllerProvider);
    return ScaffoldPage(
      header: const Header(title: "ادارة الوجبات"),
      content: state.map<Widget>(
          init: (_) => _.isError ? const Text("error") : const CenterLoading(),
          loaded: (state) {
            if (state.addNewMeal) {
              return ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (state.isRefreshing)
                    const CenterLoading()
                  else
                    FilledButton(
                      child: const Icon(Icons.arrow_back),
                      onPressed: () {
                        ref
                            .read(mealMangerControllerProvider.notifier)
                            .setAddMeal(false);
                      },
                    ),
                  const CreateMealWidget(),
                ],
              );
            }
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300),
                itemCount: state.meals.length + 1,
                itemBuilder: (context, i) {
                  if (i == 0) {
                    return FilledButton(
                      onPressed: () {
                        ref
                            .read(mealMangerControllerProvider.notifier)
                            .setAddMeal(true);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("اضافة وجبة جديدة"),
                          SizedBox(
                            height: 30,
                          ),
                          Icon(FluentIcons.add)
                        ],
                      ),
                    );
                  } else {
                    final item = state.meals[i - 1];
                    return MealCard(
                      item: item,
                      onToggleActivate: () async {
                        //TODO we need controller here
                        // await context.riverpod
                        //     .read(resturantServiceProvider)
                        //     .changeActive(item.id, item.isDisabled);
                        // data.resturnats[i - 1] = item.isDisabled;
                      },
                    );
                  }
                });
          }),
    );
  }
}
