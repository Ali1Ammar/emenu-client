// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderType _$OrderTypeFromJson(Map<String, dynamic> json) => OrderType(
      json['id'] as int,
      json['isDisabled'] as bool,
      json['resturantId'] as int,
      json['kitchenId'] as int,
      json['name'] as String,
      json['paymentMsg'] as String,
      json['deliverType'] as String,
      $enumDecode(_$SelectKitchenViaEnumMap, json['selectKitchenVia']),
    );

Map<String, dynamic> _$OrderTypeToJson(OrderType instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'paymentMsg': instance.paymentMsg,
      'deliverType': instance.deliverType,
      'isDisabled': instance.isDisabled,
      'resturantId': instance.resturantId,
      'kitchenId': instance.kitchenId,
      'selectKitchenVia': _$SelectKitchenViaEnumMap[instance.selectKitchenVia],
    };

const _$SelectKitchenViaEnumMap = {
  SelectKitchenVia.None: 'None',
  SelectKitchenVia.CustomerSpot: 'CustomerSpot',
  SelectKitchenVia.Meal: 'Meal',
};
