import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/new_rest/meal/new_meal.dart';
import 'package:manger/new_rest/new_category.dart';
import 'package:manger/new_rest/new_kicthen.dart';
import 'package:manger/new_rest/new_ordertype.dart';
import 'package:manger/new_rest/new_spot.dart';
import 'package:manger/shared/widget/resturant_card.dart';

class HomeResturantMangePage extends ConsumerWidget {
  const HomeResturantMangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cont = ref.watch(resturnatHomeControllerProvider);
    final state = ref.watch(currentLinkedResturant);
    final rest = state.value;
    return ScaffoldPage(
      header: const PageHeader(
        commandBar: SizedBox(
          width: 400,
          child: TextBox(
            maxLines: 1,
            suffix: Icon(FluentIcons.search),
          ),
        ),
        title: Text("ادارة المطعم"),
      ),
      content: ListView(
        children: [
          if (state.isRefreshing) const CircularProgressIndicator(),
          if (state.isError)
            Column(
              children: [
                Text(state.asError!.error.toString()),
                Button(
                    child: Text("restart"),
                    onPressed: () {
                      cont.initResturant();
                    })
              ],
            ),
          if (rest != null)
            ...[
              SizedBox(
                height: 200,
                child: ResturantCard(
                  resturant: rest,
                  // onToggleActivate: () async {
                  //     await context.riverpod.read(resturantServiceProvider).changeActive(item.id, item.isDisabled);
                  // }
                ),
              ),
              if (rest.mainCategory.isEmpty) const CreateCategoryWidget(),
              if (rest.kitchen.isEmpty) const CreateKitchenWidget(),
              if (rest.orderType.isEmpty) const CreateOrderTypeWidget(),
              if (rest.customerSpot.isEmpty) const CreateCusmoterSpotWidget(),
              if (rest.mainCategory.isNotEmpty && rest.kitchen.isNotEmpty)
                CreateMealWidget(
                  category: rest.mainCategory,
                  kitchen: rest.kitchen,
                )
            ].map((e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: e,
                    ),
                  ),
                ))
        ],
      ),
    );
  }
}
