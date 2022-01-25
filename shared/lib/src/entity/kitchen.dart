

import 'package:json_annotation/json_annotation.dart';

part "kitchen.g.dart";

@JsonSerializable()
class Kitchen {
  final int id;
  final String name;
  final bool isDisabled;
  final int resturantId;
  Kitchen(this.id, this.name, this.isDisabled, this.resturantId);

  factory Kitchen.fromJson(Map<String, dynamic> json) => _$KitchenFromJson(json);
  Map<String, dynamic> toJson() => _$KitchenToJson(this);
}

