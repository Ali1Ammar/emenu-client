// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      json['id'] as int,
      $enumDecode(_$OrderStatusEnumMap, json['status']),
      CustomerSpot.fromJson(json['customerSpot'] as Map<String, dynamic>),
      json['customerFeedBack'] == null
          ? null
          : CustomerFeedBack.fromJson(
              json['customerFeedBack'] as Map<String, dynamic>),
      OrderType.fromJson(json['type'] as Map<String, dynamic>),
      (json['price'] as num).toDouble(),
      json['isPayed'] as bool,
      (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'status': _$OrderStatusEnumMap[instance.status],
      'customerSpot': instance.customerSpot.toJson(),
      'customerFeedBack': instance.customerFeedBack?.toJson(),
      'type': instance.type.toJson(),
      'price': instance.price,
      'isPayed': instance.isPayed,
      'orderItems': instance.orderItems.map((e) => e.toJson()).toList(),
    };

const _$OrderStatusEnumMap = {
  OrderStatus.WaitPayment: 'WaitPayment',
  OrderStatus.WaitInKitchen: 'WaitInKitchen',
  OrderStatus.DoneByKitchen: 'DoneByKitchen',
  OrderStatus.DeliveredByKitchen: 'DeliveredByKitchen',
  OrderStatus.Canceled: 'Canceled',
  OrderStatus.Done: 'Done',
};
