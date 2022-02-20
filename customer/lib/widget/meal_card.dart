import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class MealCard extends StatelessWidget {
  final Meal meal;
  const MealCard({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(getImageUrl(meal.img)),
          Text(meal.title),
          Text(meal.desc),
          Text(meal.price.toString())
        ],
      ),
    );
  }
}
