// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingValue _$$_SettingValueFromJson(Map<String, dynamic> json) =>
    _$_SettingValue(
      mode: $enumDecode(_$ThemeModeEnumMap, json['mode']),
      isFirstOpen: json['isFirstOpen'] as bool? ?? true,
    );

Map<String, dynamic> _$$_SettingValueToJson(_$_SettingValue instance) =>
    <String, dynamic>{
      'mode': _$ThemeModeEnumMap[instance.mode],
      'isFirstOpen': instance.isFirstOpen,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
