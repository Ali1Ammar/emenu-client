// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_ordertype_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewOrderTypeValue _$NewOrderTypeValueFromJson(Map<String, dynamic> json) =>
    NewOrderTypeValue()
      ..name = json['name'] as String?
      ..paymentMsg = json['paymentMsg'] as String?
      ..deliverType = json['deliverType'] as String?
      ..selectKitchenVia =
          $enumDecode(_$SelectKitchenViaEnumMap, json['selectKitchenVia']);

Map<String, dynamic> _$NewOrderTypeValueToJson(NewOrderTypeValue instance) =>
    <String, dynamic>{
      'name': instance.name,
      'paymentMsg': instance.paymentMsg,
      'deliverType': instance.deliverType,
      'selectKitchenVia': _$SelectKitchenViaEnumMap[instance.selectKitchenVia],
    };

const _$SelectKitchenViaEnumMap = {
  SelectKitchenVia.None: 'None',
  SelectKitchenVia.CustomerSpot: 'CustomerSpot',
  SelectKitchenVia.Meal: 'Meal',
};
