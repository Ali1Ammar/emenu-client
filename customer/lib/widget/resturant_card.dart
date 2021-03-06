import 'package:customer/shared/context_helper.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class ResturantCard extends StatelessWidget {
  final Resturant resturant;

  const ResturantCard({Key? key, required this.resturant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // OnContext
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipOval(
              child: Image.network(
                  getImageUrl(resturant.img, context.riverpod.read),height: 200, fit:  BoxFit.cover  , ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                resturant.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
