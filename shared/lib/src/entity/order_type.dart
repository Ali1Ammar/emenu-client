




// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
part "order_type.g.dart";

@JsonSerializable()
class OrderType {
  final int id;
  final String name;
  final String paymentMsg;
      final String deliverType;

  final bool isDisabled;

  final int resturantId;
  final int kitchenId ;
  final SelectKitchenVia selectKitchenVia;
  OrderType(this.id,  this.isDisabled, this.resturantId, this.kitchenId, this.name, this.paymentMsg, this.deliverType, this.selectKitchenVia);

  factory OrderType.fromJson(Map<String, dynamic> json) => _$OrderTypeFromJson(json);
  Map<String, dynamic> toJson() => _$OrderTypeToJson(this);
}


enum SelectKitchenVia {
  None,
  CustomerSpot,
  Meal,
}



extension SelectKitchenViaExt on SelectKitchenVia{
  String get ar{
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
