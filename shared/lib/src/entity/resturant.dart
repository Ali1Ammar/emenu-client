import 'package:json_annotation/json_annotation.dart';
import 'package:shared/src/entity/category.dart';
import 'package:shared/src/entity/customer_spot.dart';
import 'package:shared/src/entity/kitchen.dart';
import 'package:shared/src/entity/order_type.dart';

part "resturant.g.dart";

@JsonSerializable()
class Resturant {
  final int id;
  final String name;
  final bool isDisabled;
  final String location;
  final String img;
  Resturant(this.id, this.name, this.isDisabled, this.location, this.img);

  factory Resturant.fromJson(Map<String, dynamic> json) => _$ResturantFromJson(json);
  Map<String, dynamic> toJson() => _$ResturantToJson(this);
}


@JsonSerializable()
class RealtionResturant implements Resturant {
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
  final List<Kitchen> kitchen;
  final List<CustomerSpot> customerSpot;
  final List<OrderType> orderType;
  final List<MainCategory> mainCategory;
  RealtionResturant(this.id, this.name, this.isDisabled, this.location, this.img, this.kitchen, this.customerSpot, this.orderType, this.mainCategory);

  factory RealtionResturant.fromJson(Map<String, dynamic> json) => _$RealtionResturantFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RealtionResturantToJson(this);
}



// model Resturant {
//   id         Int     @id @default(autoincrement())
//   isDisabled Boolean @default(true)

//   name         String
//   img          String
//   location     String

//   admins       User[]
//   MainCategory MainCategory[]
//   customerSpot CustomerSpot[]
//   Kitchen      Kitchen[]
//   orderType    OrderType[]

// }