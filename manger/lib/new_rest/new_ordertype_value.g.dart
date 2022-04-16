// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_ordertype_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewOrderTypeValue _$NewOrderTypeValueFromJson(Map<String, dynamic> json) =>
    NewOrderTypeValue()
      ..name = json['name'] as String?
      ..paymentMsg = json['paymentMsg'] as String?
      ..deliverMsg = json['deliverMsg'] as String?
      ..deliverType =
          $enumDecodeNullable(_$DeliverTypeEnumMap, json['deliverType'])
      ..paymentType =
          $enumDecodeNullable(_$PaymentTypeEnumMap, json['paymentType'])
      ..selectCustomerSpot = json['selectCustomerSpot'] as bool
      ..selectKitchenVia =
          $enumDecode(_$SelectKitchenViaEnumMap, json['selectKitchenVia']);

Map<String, dynamic> _$NewOrderTypeValueToJson(NewOrderTypeValue instance) =>
    <String, dynamic>{
      'name': instance.name,
      'paymentMsg': instance.paymentMsg,
      'deliverMsg': instance.deliverMsg,
      'deliverType': _$DeliverTypeEnumMap[instance.deliverType],
      'paymentType': _$PaymentTypeEnumMap[instance.paymentType],
      'selectCustomerSpot': instance.selectCustomerSpot,
      'selectKitchenVia': _$SelectKitchenViaEnumMap[instance.selectKitchenVia],
    };

const _$DeliverTypeEnumMap = {
  DeliverType.employeerDeliverFood: 'employeerDeliverFood',
  DeliverType.customerPickFood: 'customerPickFood',
};

const _$PaymentTypeEnumMap = {
  PaymentType.beforeTakeOrder: 'beforeTakeOrder',
  PaymentType.afterTakeOrder: 'afterTakeOrder',
};

const _$SelectKitchenViaEnumMap = {
  SelectKitchenVia.None: 'None',
  SelectKitchenVia.CustomerSpot: 'CustomerSpot',
  SelectKitchenVia.Meal: 'Meal',
};
