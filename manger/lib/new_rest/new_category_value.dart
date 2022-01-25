import 'package:freezed_annotation/freezed_annotation.dart';

part "new_category_value.g.dart";

@JsonSerializable()
class NewCategoryValue {
  String? name;
  String? desc;
  String? img;
  List<String> children = [""];

  // factory NewCategoryValue.fromJson(Map<String, dynamic> json) => _$NewCategoryValueFromJson(json);
  Map<String, dynamic> toJson() => _$NewCategoryValueToJson(this);
}
