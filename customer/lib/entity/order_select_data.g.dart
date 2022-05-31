// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_select_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderSelectData _$OrderSelectDataFromJson(Map<String, dynamic> json) =>
    OrderSelectData(
      RealtionResturantViaSpot.fromJson(
          json['resturant'] as Map<String, dynamic>),
      OrderType.fromJson(json['orderType'] as Map<String, dynamic>),
      json['spot'] == null
          ? null
          : CustomerSpot.fromJson(json['spot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderSelectDataToJson(OrderSelectData instance) =>
    <String, dynamic>{
      'resturant': instance.resturant.toJson(),
      'orderType': instance.orderType.toJson(),
      'spot': instance.spot?.toJson(),
    };
