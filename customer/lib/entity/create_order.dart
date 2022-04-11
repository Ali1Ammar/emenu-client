import 'package:customer/select_order/select_order_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_order.g.dart';
@JsonSerializable()
class CreateOrderDto {
  final List<CreateOrderItemDto> orderItems;
  final int? customerSpotId;
  final int orderTypeId;

  CreateOrderDto(this.orderItems, this.customerSpotId, this.orderTypeId);

  factory CreateOrderDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderDtoFromJson(json);
  Map<String, dynamic> toJson() => _$CreateOrderDtoToJson(this);
}

@JsonSerializable()
class CreateOrderItemDto {
  final int count;
  final int mealId;
  final String notes;
  final List<String> selectedExtra;

  CreateOrderItemDto(this.count, this.mealId, this.notes, this.selectedExtra);
  factory CreateOrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderItemDtoFromJson(json);
  Map<String, dynamic> toJson() => _$CreateOrderItemDtoToJson(this);

  factory CreateOrderItemDto.fromCreateItemFlow(CreateItemFlow flow){
    return CreateOrderItemDto(
      flow.count,
      flow.flow.meal.id,
      flow.nodes,
      flow.selectedExtra
    );
  }
}
