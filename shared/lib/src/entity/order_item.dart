

import 'package:json_annotation/json_annotation.dart';

part 'order_item.g.dart';

@JsonSerializable()
class OrderItem {

  final int id;
  final int mealId;
  final int count;
  final String? notes;
  final int orderId;

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);

  OrderItem(this.id, this.mealId, this.count, this.notes, this.orderId);
  Map<String, dynamic> toJson() => _$OrderItemToJson(this);
}
