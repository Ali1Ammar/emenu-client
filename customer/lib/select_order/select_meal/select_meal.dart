import 'package:customer/select_order/select_meal/select_meal_controller.dart';
import 'package:customer/select_order/select_meal/select_meal_subcateogry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shared/shared.dart';

class SelectMealWidget extends HookConsumerWidget {
  final MainCategory mainCategory;
  const SelectMealWidget({Key? key, required this.mainCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemScrollController = useMemoized(() => ItemScrollController());
    final itemPositionsListener =
        useMemoized(() => ItemPositionsListener.create());

    ref.watch(subCategoryMealsMapController);
    return ScrollablePositionedList.builder(
      itemCount: mainCategory.children.length + 1,
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
      itemBuilder: (context, _index) {
        if (_index == 0) {
          return SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var i = 0; i < mainCategory.children.length; i++)
                  Center(
                    child: InkWell(
                      onTap: () {
                        itemScrollController.jumpTo(index: i + 1);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(mainCategory.children[i].title),
                      ),
                    ),
                  )
              ],
            ),
          );
        }
        final index = _index - 1;
        final subCategroy = mainCategory.children[index];
        return SelectMealSubCategory(subCategory: subCategroy,);
      },
    );
  }
}
