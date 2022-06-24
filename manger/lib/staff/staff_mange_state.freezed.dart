// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'staff_mange_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StaffMangeStateTearOff {
  const _$StaffMangeStateTearOff();

  InitStaffs init([bool isError = false]) {
    return InitStaffs(
      isError,
    );
  }

  LodedStaffs loaded(
      {required List<User> staffs,
      OldEditStaffDto? oldEdited = null,
      bool editMode = false,
      bool isRefreshing = false}) {
    return LodedStaffs(
      staffs: staffs,
      oldEdited: oldEdited,
      editMode: editMode,
      isRefreshing: isRefreshing,
    );
  }
}

/// @nodoc
const $StaffMangeState = _$StaffMangeStateTearOff();

/// @nodoc
mixin _$StaffMangeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<User> staffs, OldEditStaffDto? oldEdited,
            bool editMode, bool isRefreshing)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<User> staffs, OldEditStaffDto? oldEdited,
            bool editMode, bool isRefreshing)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<User> staffs, OldEditStaffDto? oldEdited,
            bool editMode, bool isRefreshing)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStaffs value) init,
    required TResult Function(LodedStaffs value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStaffs value)? init,
    TResult Function(LodedStaffs value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStaffs value)? init,
    TResult Function(LodedStaffs value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffMangeStateCopyWith<$Res> {
  factory $StaffMangeStateCopyWith(
          StaffMangeState value, $Res Function(StaffMangeState) then) =
      _$StaffMangeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StaffMangeStateCopyWithImpl<$Res>
    implements $StaffMangeStateCopyWith<$Res> {
  _$StaffMangeStateCopyWithImpl(this._value, this._then);

  final StaffMangeState _value;
  // ignore: unused_field
  final $Res Function(StaffMangeState) _then;
}

/// @nodoc
abstract class $InitStaffsCopyWith<$Res> {
  factory $InitStaffsCopyWith(
          InitStaffs value, $Res Function(InitStaffs) then) =
      _$InitStaffsCopyWithImpl<$Res>;
  $Res call({bool isError});
}

/// @nodoc
class _$InitStaffsCopyWithImpl<$Res> extends _$StaffMangeStateCopyWithImpl<$Res>
    implements $InitStaffsCopyWith<$Res> {
  _$InitStaffsCopyWithImpl(InitStaffs _value, $Res Function(InitStaffs) _then)
      : super(_value, (v) => _then(v as InitStaffs));

  @override
  InitStaffs get _value => super._value as InitStaffs;

  @override
  $Res call({
    Object? isError = freezed,
  }) {
    return _then(InitStaffs(
      isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitStaffs implements InitStaffs {
  const _$InitStaffs([this.isError = false]);

  @JsonKey()
  @override
  final bool isError;

  @override
  String toString() {
    return 'StaffMangeState.init(isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitStaffs &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  $InitStaffsCopyWith<InitStaffs> get copyWith =>
      _$InitStaffsCopyWithImpl<InitStaffs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<User> staffs, OldEditStaffDto? oldEdited,
            bool editMode, bool isRefreshing)
        loaded,
  }) {
    return init(isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<User> staffs, OldEditStaffDto? oldEdited,
            bool editMode, bool isRefreshing)?
        loaded,
  }) {
    return init?.call(isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<User> staffs, OldEditStaffDto? oldEdited,
            bool editMode, bool isRefreshing)?
        loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(isError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStaffs value) init,
    required TResult Function(LodedStaffs value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStaffs value)? init,
    TResult Function(LodedStaffs value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStaffs value)? init,
    TResult Function(LodedStaffs value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitStaffs implements StaffMangeState {
  const factory InitStaffs([bool isError]) = _$InitStaffs;

  bool get isError;
  @JsonKey(ignore: true)
  $InitStaffsCopyWith<InitStaffs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LodedStaffsCopyWith<$Res> {
  factory $LodedStaffsCopyWith(
          LodedStaffs value, $Res Function(LodedStaffs) then) =
      _$LodedStaffsCopyWithImpl<$Res>;
  $Res call(
      {List<User> staffs,
      OldEditStaffDto? oldEdited,
      bool editMode,
      bool isRefreshing});
}

/// @nodoc
class _$LodedStaffsCopyWithImpl<$Res>
    extends _$StaffMangeStateCopyWithImpl<$Res>
    implements $LodedStaffsCopyWith<$Res> {
  _$LodedStaffsCopyWithImpl(
      LodedStaffs _value, $Res Function(LodedStaffs) _then)
      : super(_value, (v) => _then(v as LodedStaffs));

  @override
  LodedStaffs get _value => super._value as LodedStaffs;

  @override
  $Res call({
    Object? staffs = freezed,
    Object? oldEdited = freezed,
    Object? editMode = freezed,
    Object? isRefreshing = freezed,
  }) {
    return _then(LodedStaffs(
      staffs: staffs == freezed
          ? _value.staffs
          : staffs // ignore: cast_nullable_to_non_nullable
              as List<User>,
      oldEdited: oldEdited == freezed
          ? _value.oldEdited
          : oldEdited // ignore: cast_nullable_to_non_nullable
              as OldEditStaffDto?,
      editMode: editMode == freezed
          ? _value.editMode
          : editMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: isRefreshing == freezed
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LodedStaffs implements LodedStaffs {
  const _$LodedStaffs(
      {required this.staffs,
      this.oldEdited = null,
      this.editMode = false,
      this.isRefreshing = false});

  @override
  final List<User> staffs;
  @JsonKey()
  @override
  final OldEditStaffDto? oldEdited;
  @JsonKey()
  @override
  final bool editMode;
  @JsonKey()
  @override
  final bool isRefreshing;

  @override
  String toString() {
    return 'StaffMangeState.loaded(staffs: $staffs, oldEdited: $oldEdited, editMode: $editMode, isRefreshing: $isRefreshing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LodedStaffs &&
            const DeepCollectionEquality().equals(other.staffs, staffs) &&
            const DeepCollectionEquality().equals(other.oldEdited, oldEdited) &&
            const DeepCollectionEquality().equals(other.editMode, editMode) &&
            const DeepCollectionEquality()
                .equals(other.isRefreshing, isRefreshing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(staffs),
      const DeepCollectionEquality().hash(oldEdited),
      const DeepCollectionEquality().hash(editMode),
      const DeepCollectionEquality().hash(isRefreshing));

  @JsonKey(ignore: true)
  @override
  $LodedStaffsCopyWith<LodedStaffs> get copyWith =>
      _$LodedStaffsCopyWithImpl<LodedStaffs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<User> staffs, OldEditStaffDto? oldEdited,
            bool editMode, bool isRefreshing)
        loaded,
  }) {
    return loaded(staffs, oldEdited, editMode, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<User> staffs, OldEditStaffDto? oldEdited,
            bool editMode, bool isRefreshing)?
        loaded,
  }) {
    return loaded?.call(staffs, oldEdited, editMode, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<User> staffs, OldEditStaffDto? oldEdited,
            bool editMode, bool isRefreshing)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(staffs, oldEdited, editMode, isRefreshing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStaffs value) init,
    required TResult Function(LodedStaffs value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitStaffs value)? init,
    TResult Function(LodedStaffs value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStaffs value)? init,
    TResult Function(LodedStaffs value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LodedStaffs implements StaffMangeState {
  const factory LodedStaffs(
      {required List<User> staffs,
      OldEditStaffDto? oldEdited,
      bool editMode,
      bool isRefreshing}) = _$LodedStaffs;

  List<User> get staffs;
  OldEditStaffDto? get oldEdited;
  bool get editMode;
  bool get isRefreshing;
  @JsonKey(ignore: true)
  $LodedStaffsCopyWith<LodedStaffs> get copyWith =>
      throw _privateConstructorUsedError;
}
