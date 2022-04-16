import 'package:fluent_ui/fluent_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_value.freezed.dart';
part 'setting_value.g.dart';

@freezed
class SettingValue with _$SettingValue {
  const factory SettingValue(
      {required ThemeMode mode,
      @Default(true) bool isFirstOpen}) = _SettingValue;

  factory SettingValue.fromJson(Map<String, dynamic> json) =>
      _$SettingValueFromJson(json);
}
