// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['id'] as int,
      json['userName'] as String,
      json['resturantId'] as int?,
      (json['permissons'] as List<dynamic>)
          .map((e) => $enumDecode(_$UserPermissionsEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'resturantId': instance.resturantId,
      'permissons':
          instance.permissons.map((e) => _$UserPermissionsEnumMap[e]).toList(),
    };

const _$UserPermissionsEnumMap = {
  UserPermissions.SystemAdmin: 'SystemAdmin',
  UserPermissions.ResturantAdmin: 'ResturantAdmin',
  UserPermissions.Cacher: 'Cacher',
  UserPermissions.Kitchen: 'Kitchen',
  UserPermissions.Waiter: 'Waiter',
};
