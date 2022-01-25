import 'package:freezed_annotation/freezed_annotation.dart';

part "new_meal_value.g.dart";

@JsonSerializable()
class NewMealValue {
  String? title;
  String? desc;
  String? img;
  double? price;
  int? kitchenId;
  int? subCategoryId;

  Map<String, dynamic> toJson() => _$NewMealValueToJson(this);
}
