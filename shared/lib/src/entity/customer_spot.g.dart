// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_spot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerSpot _$CustomerSpotFromJson(Map<String, dynamic> json) => CustomerSpot(
      json['id'] as int,
      json['isDisabled'] as bool,
      json['resturantId'] as int,
      json['identifier'] as String,
      json['kitchenId'] as int?,
      json['orderTypeId'] as int,
    );

Map<String, dynamic> _$CustomerSpotToJson(CustomerSpot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'isDisabled': instance.isDisabled,
      'resturantId': instance.resturantId,
      'kitchenId': instance.kitchenId,
      'orderTypeId': instance.orderTypeId,
    };
