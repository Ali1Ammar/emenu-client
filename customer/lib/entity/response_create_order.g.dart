// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_create_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseCreateOrder _$ResponseCreateOrderFromJson(Map<String, dynamic> json) =>
    ResponseCreateOrder(
      json['access_token'] as String,
      Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseCreateOrderToJson(
        ResponseCreateOrder instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'order': instance.order.toJson(),
    };
