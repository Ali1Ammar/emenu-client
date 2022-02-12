// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_meal_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewMealValue _$NewMealValueFromJson(Map<String, dynamic> json) => NewMealValue()
  ..title = json['title'] as String?
  ..desc = json['desc'] as String?
  ..img = json['img'] as String?
  ..price = (json['price'] as num?)?.toDouble()
  ..kitchenId = json['kitchenId'] as int?
  ..subCategoryId = json['subCategoryId'] as int?
  ..extra = (json['extra'] as List<dynamic>?)?.map((e) => e as String).toList();

Map<String, dynamic> _$NewMealValueToJson(NewMealValue instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
      'img': instance.img,
      'price': instance.price,
      'kitchenId': instance.kitchenId,
      'subCategoryId': instance.subCategoryId,
      'extra': instance.extra,
    };
