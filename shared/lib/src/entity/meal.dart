import 'package:json_annotation/json_annotation.dart';

part "meal.g.dart";

@JsonSerializable()
class Meal {
  final int id;
  final String title;
  final String desc;
  final String img;
  final double price;
  final List<String> extra;
  final bool isDisabled;
  final int kitchenId;
  final int subCategoryId;
  
  Meal(this.id, this.title, this.desc, this.img, this.price, this.isDisabled,
      this.kitchenId, this.subCategoryId, this.extra);

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

  Map<String, dynamic> toJson() => _$MealToJson(this);
}
