


// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:shared/src/entity/customer_feedback.dart';
import 'package:shared/src/entity/customer_spot.dart';
import 'package:shared/src/entity/order_item.dart';
import 'package:shared/src/entity/order_type.dart';
part "order.g.dart";

@JsonSerializable()
class Order {
  final int id;
  final OrderStatus status;
  final CustomerSpot customerSpot;
  final CustomerFeedBack? customerFeedBack;
  final OrderType type;
  final double price;
  final bool isPayed;
  final List<OrderItem> orderItems;



  factory Order.fromJson(Map<String, dynamic> json) =>
      _$OrderFromJson(json);

  Order(this.id, this.status, this.customerSpot, this.customerFeedBack, this.type, this.price, this.isPayed, this.orderItems);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

enum OrderStatus {
    WaitPayment,
  WaitInKitchen,
  DoneByKitchen,
  DeliveredByKitchen,
  Canceled,
  Done,
}