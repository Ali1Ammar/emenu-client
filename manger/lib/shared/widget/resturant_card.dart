import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manger/shared/img_url.dart';
import 'package:shared/shared.dart';

class ResturantCard extends StatelessWidget {
  final Resturant resturant;
  final VoidCallback? onToggleActivate;
  const ResturantCard(
      {Key? key, required this.resturant, this.onToggleActivate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              getImageUrl(resturant.img),
            ),
          ),
          Text(resturant.name),
          Row(
            children: [
              Text(resturant.isDisabled ? "غير نشط" : "نشط"),
              if (onToggleActivate != null)
                Button(
                    child: Text(resturant.isDisabled ? "تفعيل" : "ايقاف"),
                    onPressed: onToggleActivate)
            ],
          )
        ],
      ),
    );
  }
}
