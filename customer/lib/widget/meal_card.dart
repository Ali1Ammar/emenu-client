import 'package:customer/shared/number_format.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class MealCard extends StatelessWidget {
  final Meal meal;
  const MealCard({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formtatedPrice = numberFormat.format(meal.price);
    final meida = MediaQuery.of(context);
    final isTablet = meida.size.aspectRatio > 0.5;
    var aspectRatio2 = AspectRatio(
        aspectRatio: 5 / 4,
        child: Image.network(
          getImageUrl(meal.img),
          fit: BoxFit.cover,
        ));

    late final Widget child;
    if (isTablet) {
      child = ConstrainedBox(
        constraints: BoxConstraints(maxHeight: meida.size.height / 3.2),
        child: Row(
          children: [
            Expanded(
              child: aspectRatio2,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(meal.title,
                      style: Theme.of(context).textTheme.headline6),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text("$formtatedPrice دينار"),
                  ),
                  Text(meal.desc, style: Theme.of(context).textTheme.subtitle2),
                ],
              ),
            ))
          ],
        ),
      );
    } else {
      child = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          aspectRatio2,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(meal.title, style: Theme.of(context).textTheme.headline6),
                Text("$formtatedPrice دينار")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child:
                Text(meal.desc, style: Theme.of(context).textTheme.subtitle2),
          ),
        ],
      );
    }
    return Card(child: child);
  }
}
