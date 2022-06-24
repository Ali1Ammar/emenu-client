// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_staff_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewStaffDto _$NewStaffDtoFromJson(Map<String, dynamic> json) => NewStaffDto(
      name: json['name'] as String,
      userName: json['userName'] as String,
      password: json['password'] as String,
      permissons: (json['permissons'] as List<dynamic>)
          .map((e) => $enumDecode(_$UserPermissionsEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$NewStaffDtoToJson(NewStaffDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'password': instance.password,
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
