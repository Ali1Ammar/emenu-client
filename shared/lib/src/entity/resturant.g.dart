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

RealtionResturant _$RealtionResturantFromJson(Map<String, dynamic> json) =>
    RealtionResturant(
      json['id'] as int,
      json['name'] as String,
      json['isDisabled'] as bool,
      json['location'] as String,
      json['img'] as String,
      (json['kitchen'] as List<dynamic>)
          .map((e) => Kitchen.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['customerSpot'] as List<dynamic>)
          .map((e) => CustomerSpot.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['orderType'] as List<dynamic>)
          .map((e) => OrderType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['mainCategory'] as List<dynamic>)
          .map((e) => MainCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RealtionResturantToJson(RealtionResturant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isDisabled': instance.isDisabled,
      'location': instance.location,
      'img': instance.img,
      'kitchen': instance.kitchen.map((e) => e.toJson()).toList(),
      'customerSpot': instance.customerSpot.map((e) => e.toJson()).toList(),
      'orderType': instance.orderType.map((e) => e.toJson()).toList(),
      'mainCategory': instance.mainCategory.map((e) => e.toJson()).toList(),
    };
