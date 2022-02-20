// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingValue _$SettingValueFromJson(Map<String, dynamic> json) {
  return _SettingValue.fromJson(json);
}

/// @nodoc
class _$SettingValueTearOff {
  const _$SettingValueTearOff();

  _SettingValue call({required ThemeMode mode, bool isFirstOpen = true}) {
    return _SettingValue(
      mode: mode,
      isFirstOpen: isFirstOpen,
    );
  }

  SettingValue fromJson(Map<String, Object?> json) {
    return SettingValue.fromJson(json);
  }
}

/// @nodoc
const $SettingValue = _$SettingValueTearOff();

/// @nodoc
mixin _$SettingValue {
  ThemeMode get mode => throw _privateConstructorUsedError;
  bool get isFirstOpen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingValueCopyWith<SettingValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingValueCopyWith<$Res> {
  factory $SettingValueCopyWith(
          SettingValue value, $Res Function(SettingValue) then) =
      _$SettingValueCopyWithImpl<$Res>;
  $Res call({ThemeMode mode, bool isFirstOpen});
}

/// @nodoc
class _$SettingValueCopyWithImpl<$Res> implements $SettingValueCopyWith<$Res> {
  _$SettingValueCopyWithImpl(this._value, this._then);

  final SettingValue _value;
  // ignore: unused_field
  final $Res Function(SettingValue) _then;

  @override
  $Res call({
    Object? mode = freezed,
    Object? isFirstOpen = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isFirstOpen: isFirstOpen == freezed
          ? _value.isFirstOpen
          : isFirstOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingValueCopyWith<$Res>
    implements $SettingValueCopyWith<$Res> {
  factory _$SettingValueCopyWith(
          _SettingValue value, $Res Function(_SettingValue) then) =
      __$SettingValueCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode mode, bool isFirstOpen});
}

/// @nodoc
class __$SettingValueCopyWithImpl<$Res> extends _$SettingValueCopyWithImpl<$Res>
    implements _$SettingValueCopyWith<$Res> {
  __$SettingValueCopyWithImpl(
      _SettingValue _value, $Res Function(_SettingValue) _then)
      : super(_value, (v) => _then(v as _SettingValue));

  @override
  _SettingValue get _value => super._value as _SettingValue;

  @override
  $Res call({
    Object? mode = freezed,
    Object? isFirstOpen = freezed,
  }) {
    return _then(_SettingValue(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isFirstOpen: isFirstOpen == freezed
          ? _value.isFirstOpen
          : isFirstOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingValue implements _SettingValue {
  const _$_SettingValue({required this.mode, this.isFirstOpen = true});

  factory _$_SettingValue.fromJson(Map<String, dynamic> json) =>
      _$$_SettingValueFromJson(json);

  @override
  final ThemeMode mode;
  @JsonKey()
  @override
  final bool isFirstOpen;

  @override
  String toString() {
    return 'SettingValue(mode: $mode, isFirstOpen: $isFirstOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingValue &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality()
                .equals(other.isFirstOpen, isFirstOpen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(isFirstOpen));

  @JsonKey(ignore: true)
  @override
  _$SettingValueCopyWith<_SettingValue> get copyWith =>
      __$SettingValueCopyWithImpl<_SettingValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingValueToJson(this);
  }
}

abstract class _SettingValue implements SettingValue {
  const factory _SettingValue({required ThemeMode mode, bool isFirstOpen}) =
      _$_SettingValue;

  factory _SettingValue.fromJson(Map<String, dynamic> json) =
      _$_SettingValue.fromJson;

  @override
  ThemeMode get mode;
  @override
  bool get isFirstOpen;
  @override
  @JsonKey(ignore: true)
  _$SettingValueCopyWith<_SettingValue> get copyWith =>
      throw _privateConstructorUsedError;
}
