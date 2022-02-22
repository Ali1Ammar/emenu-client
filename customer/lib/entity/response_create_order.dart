

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part "response_create_order.g.dart";

@JsonSerializable()
class ResponseCreateOrder {
  @JsonKey(name: "access_token")
  final String accessToken;
  final Order order;

    factory ResponseCreateOrder.fromJson(Map<String, dynamic> json) => _$ResponseCreateOrderFromJson(json);

  ResponseCreateOrder(this.accessToken, this.order);
  Map<String, dynamic> toJson() => _$ResponseCreateOrderToJson(this);
}

