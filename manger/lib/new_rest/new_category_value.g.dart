// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_category_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewCategoryValue _$NewCategoryValueFromJson(Map<String, dynamic> json) =>
    NewCategoryValue()
      ..title = json['title'] as String?
      ..desc = json['desc'] as String?
      ..img = json['img'] as String?
      ..children =
          (json['children'] as List<dynamic>).map((e) => e as String).toList();

Map<String, dynamic> _$NewCategoryValueToJson(NewCategoryValue instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
      'img': instance.img,
      'children': instance.children,
    };
