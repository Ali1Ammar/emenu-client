

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'resturant_realtion.g.dart';
@JsonSerializable()
class RealtionResturantCustomer implements Resturant {
  @override
  final int id;
  @override
  final String name;
  @override
  final bool isDisabled;
  @override
  final String location;
  @override
  final String img;
  final List<OrderType> orderType;
  final List<MainCategory> mainCategory;
  RealtionResturantCustomer(this.id, this.name, this.isDisabled, this.location, this.img, this.orderType, this.mainCategory);

  factory RealtionResturantCustomer.fromJson(Map<String, dynamic> json) => _$RealtionResturantCustomerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RealtionResturantCustomerToJson(this);
}