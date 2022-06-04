import 'package:json_annotation/json_annotation.dart';
import 'package:shared/shared.dart';

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
        OrderStatus.DoneByKitchen,
      if (permissons.contains(UserPermissions.Waiter))
        OrderStatus.DeliveredByKitchen,
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
