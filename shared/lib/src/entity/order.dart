// ignore_for_file: constant_identifier_names

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:shared/src/entity/customer_feedback.dart';
import 'package:shared/src/entity/customer_spot.dart';
import 'package:shared/src/entity/order_item.dart';
import 'package:shared/src/entity/order_type.dart';
part "order.g.dart";

@JsonSerializable()
@CopyWith()
class Order {
  final int id;
  final OrderStatus status;
  final CustomerSpot? customerSpot;
  final CustomerFeedBack? customerFeedBack;
  final OrderType type;
  final double price;
  final bool isPayed;
  final List<OrderItem> orderItems;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Order({ required this.id,required this.status,required this.customerSpot,required this.customerFeedBack,
     required this.type,required this.price, required this.isPayed,required this.orderItems});
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

@JsonSerializable()
class OrderChange {
  final int id;
  final OrderStatus? status;
  final bool? isPayed;
  @JsonKey(ignore: true)
  DateTime date = DateTime.now();
  factory OrderChange.fromJson(Map<String, dynamic> json) =>
      _$OrderChangeFromJson(json);

  OrderChange(this.id, this.status, this.isPayed);
  Map<String, dynamic> toJson() => _$OrderChangeToJson(this);
}

enum OrderStatus {
  WaitPayment,
  WaitInKitchen,
  DoneByKitchen,
  DeliveredByKitchen,
  Canceled,
  Done,
}

extension OrderStatusExt on OrderStatus {
  String get toArabic {
    switch (this) {
      case OrderStatus.WaitPayment:
        return "انتضار الدفع";
      case OrderStatus.WaitInKitchen:
        return "انتضار في المطبخ";

      case OrderStatus.DoneByKitchen:
        return "اكمل المطبخ";

      case OrderStatus.DeliveredByKitchen:
        return "تم توصيل";

      case OrderStatus.Canceled:
        return "ملغات";

      case OrderStatus.Done:
        return "انتهت";
    }
  }
}
