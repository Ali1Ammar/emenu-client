import 'package:json_annotation/json_annotation.dart';

part "user.g.dart";

@JsonSerializable()
class User {
  final int id;
  final String userName;
  final int? resturantId;
  final List<UserPermissions> permissons;
  @JsonKey(ignore: true)
  late bool isSystemAdmin;

  User(this.id, this.userName, this.resturantId, this.permissons) {
    isSystemAdmin = permissons.contains(UserPermissions.SystemAdmin);
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

enum UserPermissions {
  // ignore: constant_identifier_names
  SystemAdmin,
  // ignore: constant_identifier_names
  ResturantAdmin,
  // ignore: constant_identifier_names
  Cacher,
  // ignore: constant_identifier_names
  Kitchen,
}

extension UserPermissionsExt on UserPermissions {
  String get ar {
    switch (this) {
      case UserPermissions.SystemAdmin:
        return "مدير نظام";
      case UserPermissions.ResturantAdmin:
        return "مدير مطعم";
      case UserPermissions.Cacher:
        return "كاشير";
      case UserPermissions.Kitchen:
        return "مسؤول مطبخ";
    }
  }
}
