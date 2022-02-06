// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meal _$MealFromJson(Map<String, dynamic> json) => Meal(
      json['id'] as int,
      json['title'] as String,
      json['desc'] as String,
      json['img'] as String,
      (json['price'] as num).toDouble(),
      json['isDisabled'] as bool,
      json['kitchenId'] as int,
      json['subCategoryId'] as int,
    );

Map<String, dynamic> _$MealToJson(Meal instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'desc': instance.desc,
      'img': instance.img,
      'price': instance.price,
      'isDisabled': instance.isDisabled,
      'kitchenId': instance.kitchenId,
      'subCategoryId': instance.subCategoryId,
    };
