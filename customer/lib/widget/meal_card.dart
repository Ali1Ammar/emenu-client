import 'package:customer/shared/number_format.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';


class MealCard extends StatelessWidget {
  final Meal meal;
  const MealCard({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formtatedPrice = numberFormat.format(meal.price);
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
              aspectRatio: 5 / 4,
              child: Image.network(
                getImageUrl(meal.img),
                
                fit:BoxFit.cover ,
              )),
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
          // Padding(
          //   padding: const EdgeInsets.all(4.0),
          //   child: LabeldText(title: "السعر : " , text: meal.price.toString() ),
          // )
        ],
      ),
    );
  }
}
