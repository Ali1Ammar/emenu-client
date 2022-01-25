import 'package:shared/shared.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part "new_ordertype_value.g.dart";

@JsonSerializable()
class NewOrderTypeValue {
  String? name;
  String? paymentMsg;
  String? deliverType;

  SelectKitchenVia selectKitchenVia = SelectKitchenVia.None;
  // NewOrderTypeValue(this.name, this.paymentMsg, this.deliverType, this.selectKitchenVia);

  // factory NewOrderTypeValue.fromJson(Map<String, dynamic> json) => _$NewOrderTypeValueFromJson(json);
  Map<String, dynamic> toJson() => _$NewOrderTypeValueToJson(this);
}
