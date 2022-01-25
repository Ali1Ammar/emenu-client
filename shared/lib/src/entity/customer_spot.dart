

import 'package:json_annotation/json_annotation.dart';

part "customer_spot.g.dart";


@JsonSerializable()
class CustomerSpot {
  final int id;
  final String identifier;
  final bool isDisabled;
  final int resturantId;
  final int kitchenId ;
  CustomerSpot(this.id,  this.isDisabled, this.resturantId, this.identifier, this.kitchenId);

  factory CustomerSpot.fromJson(Map<String, dynamic> json) => _$CustomerSpotFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerSpotToJson(this);
}

