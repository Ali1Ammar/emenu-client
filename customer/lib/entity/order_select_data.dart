

import 'package:customer/entity/resturant_realtion.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part "order_select_data.g.dart";

@JsonSerializable()
class OrderSelectData {
  final RealtionResturantViaSpot resturant;
  final OrderType orderType;
  final CustomerSpot? spot;

  OrderSelectData(this.resturant, this.orderType, this.spot);
  Map<String, dynamic> toJson() => _$OrderSelectDataToJson(this);

  factory OrderSelectData.fromJson(Map<String, dynamic> json) => _$OrderSelectDataFromJson(json);

}