import 'package:fluent_ui/fluent_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/meal/meal_mange_controller.dart';
import 'package:manger/new_rest/meal/new_meal.dart';
import 'package:manger/shared/grid_view_custom.dart';
import 'package:manger/shared/widget/header.dart';

import 'package:manger/shared/widget/meal_card.dart';
import 'package:shared/shared.dart';

class MealMangePage extends ConsumerWidget {
  const MealMangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mealMangerControllerProvider);
    final cont = ref.watch(mealMangerControllerProvider.notifier);

    return ScaffoldPage(
      header: const Header(title: "ادارة الوجبات"),
      content: state.map<Widget>(
          init: (_) => _.isError ? const Text("error") : const CenterLoading(),
          loaded: (state) {
            if (state.editMode) {
              return ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (state.isRefreshing) const CenterLoading(),
                  CreateMealWidget(
                    oldDto: state.oldEdited,
                    onCancel: () {
                      ref
                          .read(mealMangerControllerProvider.notifier)
                          .setEditMode(false, null);
                    },
                  ),
                ],
              );
            }
            return GridViewCustomBuilder(
              itemCount: state.meals.length + 1,
              itemBuilder: (context, i) {
                if (i == 0) {
                  return FilledButton(
                    onPressed: () {
                      ref
                          .read(mealMangerControllerProvider.notifier)
                          .setEditMode(true, null);
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
                    onEdit: () {
                      ref
                          .read(mealMangerControllerProvider.notifier)
                          .setEditMode(true, i - 1);
                    },
                    onToggleActivate: () async {
                      cont.onToggleActivate(item);
                    },
                  );
                }
              },
            );
          }),
    );
  }
}
