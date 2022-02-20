// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resturant_realtion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RealtionResturantCustomer _$RealtionResturantCustomerFromJson(
        Map<String, dynamic> json) =>
    RealtionResturantCustomer(
      json['id'] as int,
      json['name'] as String,
      json['isDisabled'] as bool,
      json['location'] as String,
      json['img'] as String,
      (json['orderType'] as List<dynamic>)
          .map((e) => OrderType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['mainCategory'] as List<dynamic>)
          .map((e) => MainCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RealtionResturantCustomerToJson(
        RealtionResturantCustomer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isDisabled': instance.isDisabled,
      'location': instance.location,
      'img': instance.img,
      'orderType': instance.orderType.map((e) => e.toJson()).toList(),
      'mainCategory': instance.mainCategory.map((e) => e.toJson()).toList(),
    };
