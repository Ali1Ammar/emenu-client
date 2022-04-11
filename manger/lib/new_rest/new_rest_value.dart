import 'package:json_annotation/json_annotation.dart';

part 'new_rest_value.g.dart';

class NewResturantValue {
  String? name;
  String? location;
  String? img;
  NewAdmin admins = NewAdmin();
  bool linkWithLoggedAccount = false;
  // List<int> adminsId=[];
  NewResturantValue({this.name, this.location, this.img});
}

class NewAdmin {
  String? name;
  String? userName;
  String? password;
  // UserPermissions? permission;

  // bool isVailde =

  NewAdmin({this.name, this.userName, this.password});
}

@JsonSerializable()
class NewAdminDto {
  final String name;
  final String userName;
  final String password;

  NewAdminDto(
      {required this.name, required this.userName, required this.password});
  factory NewAdminDto.fromJson(Map<String, dynamic> json) =>
      _$NewAdminDtoFromJson(json);
  Map<String, dynamic> toJson() => _$NewAdminDtoToJson(this);
}

@JsonSerializable()
class CreateResturantDto {
  final String name;
  final String location;
  final String img;

  CreateResturantDto(
      {required this.name, required this.location, required this.img});

  factory CreateResturantDto.fromJson(Map<String, dynamic> json) =>
      _$CreateResturantDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreateResturantDtoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewResturantDto {
  final CreateResturantDto resturant;
  final NewAdminDto? admin;
  final int? adminsId;

  NewResturantDto({required this.resturant, this.admin, this.adminsId});

  factory NewResturantDto.fromJson(Map<String, dynamic> json) =>
      _$NewResturantDtoFromJson(json);
  Map<String, dynamic> toJson() => _$NewResturantDtoToJson(this);
}
