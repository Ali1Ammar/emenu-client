// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      json['id'] as int,
      json['mealId'] as int,
      json['count'] as int,
      json['notes'] as String?,
      json['orderId'] as int,
      Meal.fromJson(json['meal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
      'id': instance.id,
      'mealId': instance.mealId,
      'count': instance.count,
      'notes': instance.notes,
      'orderId': instance.orderId,
      'meal': instance.meal.toJson(),
    };
