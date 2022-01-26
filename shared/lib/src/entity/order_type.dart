// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
part "order_type.g.dart";

@JsonSerializable()
class OrderType {
  final int id;
  final String name;
  final String paymentMsg;
  final DeliverType deliverType;
  final PaymentType paymentType;


  final int resturantId;
  final SelectKitchenVia selectKitchenVia;
  OrderType(
      this.id,
      this.resturantId,
      this.name,
      this.paymentMsg,
      this.deliverType,
      this.selectKitchenVia,
      this.paymentType);

  factory OrderType.fromJson(Map<String, dynamic> json) =>
      _$OrderTypeFromJson(json);
  Map<String, dynamic> toJson() => _$OrderTypeToJson(this);
}

enum SelectKitchenVia {
  None,
  CustomerSpot,
  Meal,
}
enum PaymentType { beforeTakeOrder, afterTakeOrder }

enum DeliverType { employeerDeliverFood, customerPickFood }

extension SelectKitchenViaExt on SelectKitchenVia {
  String get ar {
    switch (this) {
      case SelectKitchenVia.CustomerSpot:
        return "مكان طلب الزبون";
      case SelectKitchenVia.Meal:
        return "الوجبات التي طلبها الزبون";
      case SelectKitchenVia.None:
        return "لا يوجد";
    }
  }
}

extension PaymentTypeExt on PaymentType {
  String get ar {
    switch (this) {
      case PaymentType.afterTakeOrder:
        return "الدفع بعد استلام الطلب";
      case PaymentType.beforeTakeOrder:
        return "الدفع قبل استلام الطلب";
    }
  }
}
extension DeliverTypeExt on DeliverType {
  String get ar {
    switch (this) {
      case DeliverType.customerPickFood:
        return "الزبون يحضر طلبة";
      case DeliverType.employeerDeliverFood:
        return "الويتر يوصل الطلب";
    }
  }
}
