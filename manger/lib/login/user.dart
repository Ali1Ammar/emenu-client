import 'package:json_annotation/json_annotation.dart';
import 'package:shared/shared.dart';

part "user.g.dart";

@JsonSerializable()
class User {
  final int id;
  final String name;
  final String userName;
  final int? resturantId;
  final List<UserPermissions> permissons;
  @JsonKey(ignore: true)
  late bool isSystemAdmin;
  @JsonKey(ignore: true)
  late bool isRestAdmin;

  User(this.id, this.userName, this.resturantId, this.permissons, this.name) {
    isSystemAdmin = permissons.contains(UserPermissions.SystemAdmin);
    isRestAdmin = permissons.contains(UserPermissions.ResturantAdmin);
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @JsonKey(ignore: true)
  late List<OrderStatus> queryStatusPermission = [
    if (permissons.contains(UserPermissions.ResturantAdmin)) ...[
      OrderStatus.DeliveredByKitchen,
      OrderStatus.Done,
      OrderStatus.DoneByKitchen,
      OrderStatus.WaitInKitchen,
      OrderStatus.WaitPayment
    ] else ...[
      if (permissons.contains(UserPermissions.Cacher)) OrderStatus.WaitPayment,
      if (permissons.contains(UserPermissions.Kitchen))
        OrderStatus.WaitInKitchen,
      if (permissons.contains(UserPermissions.Waiter))
        OrderStatus.DoneByKitchen,
    ]
  ];
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
  // ignore: constant_identifier_names
  Waiter
}

const resturnatPermissions = [
  UserPermissions.Kitchen,
  UserPermissions.Cacher,
  UserPermissions.Waiter
];

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
      case UserPermissions.Waiter:
        return "نادل";
    }
  }
}
