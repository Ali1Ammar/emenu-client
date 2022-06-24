import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manger/login/user.dart';

part "new_staff_value.g.dart";

class NewStaff {
  String? name;
  String? userName;
  String? password;
  List<UserPermissions> permission = [];

  NewStaff({this.name, this.userName, this.password});

}

@JsonSerializable()
class NewStaffDto {
  final String name;
  final String userName;
  final String password;
  final List<UserPermissions> permissons ;

  NewStaffDto(
      {required this.name, required this.userName, required this.password,required this.permissons, });
  factory NewStaffDto.fromJson(Map<String, dynamic> json) =>
      _$NewStaffDtoFromJson(json);
  Map<String, dynamic> toJson() => _$NewStaffDtoToJson(this);
}
