import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manger/shared/img_url.dart';
import 'package:shared/shared.dart';

class ResturantCard extends StatelessWidget {
  final Resturant resturant;
  const ResturantCard({Key? key, required this.resturant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
           getImageUrl(resturant.img) ,
            width: 200,
            height: 200,
          ),
          Text(resturant.name),
          Row(
            children: [
              Text(resturant.isDisabled ? "غير نشط" : "نشط"),
              Button(
                  child: Text(resturant.isDisabled ? "تفعيل" : "ايقاف"),
                  onPressed: () {
                    //TODO
                  })
            ],
          )
        ],
      ),
    );
  }
}
