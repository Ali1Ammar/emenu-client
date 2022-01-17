import 'package:json_annotation/json_annotation.dart';

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