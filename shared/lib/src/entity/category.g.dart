// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainCategory _$MainCategoryFromJson(Map<String, dynamic> json) => MainCategory(
      json['id'] as int,
      json['title'] as String,
      json['desc'] as String,
      json['img'] as String,
      json['resturantId'] as int,
      (json['children'] as List<dynamic>)
          .map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MainCategoryToJson(MainCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'desc': instance.desc,
      'img': instance.img,
      'resturantId': instance.resturantId,
      'children': instance.children,
    };

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) => SubCategory(
      json['id'] as int,
      json['title'] as String,
      json['mainCategoryId'] as int,
    );

Map<String, dynamic> _$SubCategoryToJson(SubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'mainCategoryId': instance.mainCategoryId,
    };
