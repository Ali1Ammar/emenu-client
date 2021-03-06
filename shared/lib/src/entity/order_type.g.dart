// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderType _$OrderTypeFromJson(Map<String, dynamic> json) => OrderType(
      json['id'] as int,
      json['resturantId'] as int,
      json['name'] as String,
      json['paymentMsg'] as String,
      json['deliverMsg'] as String,
      $enumDecode(_$DeliverTypeEnumMap, json['deliverType']),
      $enumDecode(_$SelectKitchenViaEnumMap, json['selectKitchenVia']),
      $enumDecode(_$PaymentTypeEnumMap, json['paymentType']),
      json['selectCustomerSpot'] as bool,
    );

Map<String, dynamic> _$OrderTypeToJson(OrderType instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'paymentMsg': instance.paymentMsg,
      'deliverMsg': instance.deliverMsg,
      'deliverType': _$DeliverTypeEnumMap[instance.deliverType],
      'paymentType': _$PaymentTypeEnumMap[instance.paymentType],
      'resturantId': instance.resturantId,
      'selectKitchenVia': _$SelectKitchenViaEnumMap[instance.selectKitchenVia],
      'selectCustomerSpot': instance.selectCustomerSpot,
    };

const _$DeliverTypeEnumMap = {
  DeliverType.employeerDeliverFood: 'employeerDeliverFood',
  DeliverType.customerPickFood: 'customerPickFood',
};

const _$SelectKitchenViaEnumMap = {
  SelectKitchenVia.None: 'None',
  SelectKitchenVia.CustomerSpot: 'CustomerSpot',
  SelectKitchenVia.Meal: 'Meal',
};

const _$PaymentTypeEnumMap = {
  PaymentType.beforeTakeOrder: 'beforeTakeOrder',
  PaymentType.afterTakeOrder: 'afterTakeOrder',
};
