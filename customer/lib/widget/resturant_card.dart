

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class ResturantCard extends StatelessWidget{
  final Resturant resturant;

  const ResturantCard({Key? key, required this.resturant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(getImageUrl(resturant.img)),
          Text(resturant.name),
        ],
      ) ,
    );
  }
}