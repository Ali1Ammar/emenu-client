import 'package:customer/widget/meal_card.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class SelectMealWidget extends StatelessWidget {
  final MainCategory mainCategory;
  final Future<List<Meal>> Function(SubCategory) getMealsFuture;
  const SelectMealWidget(
      {Key? key, required this.mainCategory, required this.getMealsFuture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mainCategory.children.length,
      itemBuilder: (context, index) {
        final subCategroy = mainCategory.children[index];
        final mealsFuture = getMealsFuture(subCategroy);
        return FutureBuilder<List<Meal>>(
            future: mealsFuture,
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const CenterLoading();
              }
              if (snap.hasError) return Text(snap.error.toString());

              return Column(
                  children: snap.data!
                      .map((e) => MealCard(
                            meal: e,
                          ))
                      .toList());
            });
      },
    );
  }
}
