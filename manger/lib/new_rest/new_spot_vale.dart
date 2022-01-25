import 'package:freezed_annotation/freezed_annotation.dart';
part "new_spot_vale.g.dart";

@JsonSerializable()
class NewSpotValue {
  String? identifier;

  // NewOrderTypeValue(this.name, this.paymentMsg, this.deliverType, this.selectKitchenVia);

  // factory NewOrderTypeValue.fromJson(Map<String, dynamic> json) => _$NewOrderTypeValueFromJson(json);
  Map<String, dynamic> toJson() => _$NewSpotValueToJson(this);
}
