// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resturant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resturant _$ResturantFromJson(Map<String, dynamic> json) => Resturant(
      json['id'] as int,
      json['name'] as String,
      json['isDisabled'] as bool,
      json['location'] as String,
      json['img'] as String,
    );

Map<String, dynamic> _$ResturantToJson(Resturant instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isDisabled': instance.isDisabled,
      'location': instance.location,
      'img': instance.img,
    };
