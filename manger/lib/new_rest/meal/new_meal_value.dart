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
  List<String>? extra;

  Map<String, dynamic> toJson() => _$NewMealValueToJson(this);
}
