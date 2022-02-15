import 'package:fluent_ui/fluent_ui.dart';
import 'package:fluent_ui/fluent_ui.dart' as f;

import 'package:flutter/material.dart';
import 'package:manger/shared/img_url.dart';
import 'package:shared/shared.dart';

class MealCard extends StatelessWidget {
  final Meal item;
  final VoidCallback? onToggleActivate;
  final VoidCallback? onEdit;
  const MealCard(
      {Key? key, required this.item, this.onToggleActivate, this.onEdit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              getImageUrl(item.img),
            ),
          ),
          Text(item.title),
           Text(item.desc),
          Row(
            children: [
              Text(item.isDisabled ? "غير نشط" : "نشط"),
              if (onToggleActivate != null)
                Button(
                    child: Text(item.isDisabled ? "تفعيل" : "ايقاف"),
                    onPressed: onToggleActivate),
              if(onEdit!=null) f.IconButton(icon: Icon(FluentIcons.edit), onPressed:onEdit)
            ],
          )
        ],
      ),
    );
  }
}
