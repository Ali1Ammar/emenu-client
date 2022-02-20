// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderDto _$CreateOrderDtoFromJson(Map<String, dynamic> json) =>
    CreateOrderDto(
      (json['orderItems'] as List<dynamic>)
          .map((e) => CreateOrderItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['customerSpotId'] as int?,
      json['orderTypeId'] as int,
    );

Map<String, dynamic> _$CreateOrderDtoToJson(CreateOrderDto instance) =>
    <String, dynamic>{
      'orderItems': instance.orderItems.map((e) => e.toJson()).toList(),
      'customerSpotId': instance.customerSpotId,
      'orderTypeId': instance.orderTypeId,
    };

CreateOrderItemDto _$CreateOrderItemDtoFromJson(Map<String, dynamic> json) =>
    CreateOrderItemDto(
      json['count'] as int,
      json['mealId'] as int,
      json['nodes'] as String,
      (json['selectedExtra'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CreateOrderItemDtoToJson(CreateOrderItemDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'mealId': instance.mealId,
      'nodes': instance.nodes,
      'selectedExtra': instance.selectedExtra,
    };
