// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kitchen _$KitchenFromJson(Map<String, dynamic> json) => Kitchen(
      json['id'] as int,
      json['name'] as String,
      json['isDisabled'] as bool,
      json['resturantId'] as int,
    );

Map<String, dynamic> _$KitchenToJson(Kitchen instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isDisabled': instance.isDisabled,
      'resturantId': instance.resturantId,
    };
