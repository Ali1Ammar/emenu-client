// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_rest_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewAdminDto _$NewAdminDtoFromJson(Map<String, dynamic> json) => NewAdminDto(
      name: json['name'] as String,
      userName: json['userName'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$NewAdminDtoToJson(NewAdminDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'password': instance.password,
    };

CreateResturantDto _$CreateResturantDtoFromJson(Map<String, dynamic> json) =>
    CreateResturantDto(
      name: json['name'] as String,
      location: json['location'] as String,
      img: json['img'] as String,
    );

Map<String, dynamic> _$CreateResturantDtoToJson(CreateResturantDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'img': instance.img,
    };

NewResturantDto _$NewResturantDtoFromJson(Map<String, dynamic> json) =>
    NewResturantDto(
      resturant: CreateResturantDto.fromJson(
          json['resturant'] as Map<String, dynamic>),
      admin: json['admin'] == null
          ? null
          : NewAdminDto.fromJson(json['admin'] as Map<String, dynamic>),
      adminsId: json['adminsId'] as int?,
    );

Map<String, dynamic> _$NewResturantDtoToJson(NewResturantDto instance) =>
    <String, dynamic>{
      'resturant': instance.resturant.toJson(),
      'admin': instance.admin?.toJson(),
      'adminsId': instance.adminsId,
    };
