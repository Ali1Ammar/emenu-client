// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ordertype_mange_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderTypeMangeStateTearOff {
  const _$OrderTypeMangeStateTearOff();

  InitOrderTypes init([bool isError = false]) {
    return InitOrderTypes(
      isError,
    );
  }

  LodedOrderTypes loaded(
      {required List<OrderType> orderType,
      OldEditOrderTypeDto? oldEdited = null,
      bool editMode = false,
      bool isRefreshing = false}) {
    return LodedOrderTypes(
      orderType: orderType,
      oldEdited: oldEdited,
      editMode: editMode,
      isRefreshing: isRefreshing,
    );
  }
}

/// @nodoc
const $OrderTypeMangeState = _$OrderTypeMangeStateTearOff();

/// @nodoc
mixin _$OrderTypeMangeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<OrderType> orderType,
            OldEditOrderTypeDto? oldEdited, bool editMode, bool isRefreshing)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<OrderType> orderType, OldEditOrderTypeDto? oldEdited,
            bool editMode, bool isRefreshing)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<OrderType> orderType, OldEditOrderTypeDto? oldEdited,
            bool editMode, bool isRefreshing)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderTypes value) init,
    required TResult Function(LodedOrderTypes value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitOrderTypes value)? init,
    TResult Function(LodedOrderTypes value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderTypes value)? init,
    TResult Function(LodedOrderTypes value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTypeMangeStateCopyWith<$Res> {
  factory $OrderTypeMangeStateCopyWith(
          OrderTypeMangeState value, $Res Function(OrderTypeMangeState) then) =
      _$OrderTypeMangeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderTypeMangeStateCopyWithImpl<$Res>
    implements $OrderTypeMangeStateCopyWith<$Res> {
  _$OrderTypeMangeStateCopyWithImpl(this._value, this._then);

  final OrderTypeMangeState _value;
  // ignore: unused_field
  final $Res Function(OrderTypeMangeState) _then;
}

/// @nodoc
abstract class $InitOrderTypesCopyWith<$Res> {
  factory $InitOrderTypesCopyWith(
          InitOrderTypes value, $Res Function(InitOrderTypes) then) =
      _$InitOrderTypesCopyWithImpl<$Res>;
  $Res call({bool isError});
}

/// @nodoc
class _$InitOrderTypesCopyWithImpl<$Res>
    extends _$OrderTypeMangeStateCopyWithImpl<$Res>
    implements $InitOrderTypesCopyWith<$Res> {
  _$InitOrderTypesCopyWithImpl(
      InitOrderTypes _value, $Res Function(InitOrderTypes) _then)
      : super(_value, (v) => _then(v as InitOrderTypes));

  @override
  InitOrderTypes get _value => super._value as InitOrderTypes;

  @override
  $Res call({
    Object? isError = freezed,
  }) {
    return _then(InitOrderTypes(
      isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitOrderTypes implements InitOrderTypes {
  const _$InitOrderTypes([this.isError = false]);

  @JsonKey()
  @override
  final bool isError;

  @override
  String toString() {
    return 'OrderTypeMangeState.init(isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitOrderTypes &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  $InitOrderTypesCopyWith<InitOrderTypes> get copyWith =>
      _$InitOrderTypesCopyWithImpl<InitOrderTypes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<OrderType> orderType,
            OldEditOrderTypeDto? oldEdited, bool editMode, bool isRefreshing)
        loaded,
  }) {
    return init(isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<OrderType> orderType, OldEditOrderTypeDto? oldEdited,
            bool editMode, bool isRefreshing)?
        loaded,
  }) {
    return init?.call(isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<OrderType> orderType, OldEditOrderTypeDto? oldEdited,
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
    required TResult Function(InitOrderTypes value) init,
    required TResult Function(LodedOrderTypes value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitOrderTypes value)? init,
    TResult Function(LodedOrderTypes value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderTypes value)? init,
    TResult Function(LodedOrderTypes value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitOrderTypes implements OrderTypeMangeState {
  const factory InitOrderTypes([bool isError]) = _$InitOrderTypes;

  bool get isError;
  @JsonKey(ignore: true)
  $InitOrderTypesCopyWith<InitOrderTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LodedOrderTypesCopyWith<$Res> {
  factory $LodedOrderTypesCopyWith(
          LodedOrderTypes value, $Res Function(LodedOrderTypes) then) =
      _$LodedOrderTypesCopyWithImpl<$Res>;
  $Res call(
      {List<OrderType> orderType,
      OldEditOrderTypeDto? oldEdited,
      bool editMode,
      bool isRefreshing});
}

/// @nodoc
class _$LodedOrderTypesCopyWithImpl<$Res>
    extends _$OrderTypeMangeStateCopyWithImpl<$Res>
    implements $LodedOrderTypesCopyWith<$Res> {
  _$LodedOrderTypesCopyWithImpl(
      LodedOrderTypes _value, $Res Function(LodedOrderTypes) _then)
      : super(_value, (v) => _then(v as LodedOrderTypes));

  @override
  LodedOrderTypes get _value => super._value as LodedOrderTypes;

  @override
  $Res call({
    Object? orderType = freezed,
    Object? oldEdited = freezed,
    Object? editMode = freezed,
    Object? isRefreshing = freezed,
  }) {
    return _then(LodedOrderTypes(
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as List<OrderType>,
      oldEdited: oldEdited == freezed
          ? _value.oldEdited
          : oldEdited // ignore: cast_nullable_to_non_nullable
              as OldEditOrderTypeDto?,
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

class _$LodedOrderTypes implements LodedOrderTypes {
  const _$LodedOrderTypes(
      {required this.orderType,
      this.oldEdited = null,
      this.editMode = false,
      this.isRefreshing = false});

  @override
  final List<OrderType> orderType;
  @JsonKey()
  @override
  final OldEditOrderTypeDto? oldEdited;
  @JsonKey()
  @override
  final bool editMode;
  @JsonKey()
  @override
  final bool isRefreshing;

  @override
  String toString() {
    return 'OrderTypeMangeState.loaded(orderType: $orderType, oldEdited: $oldEdited, editMode: $editMode, isRefreshing: $isRefreshing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LodedOrderTypes &&
            const DeepCollectionEquality().equals(other.orderType, orderType) &&
            const DeepCollectionEquality().equals(other.oldEdited, oldEdited) &&
            const DeepCollectionEquality().equals(other.editMode, editMode) &&
            const DeepCollectionEquality()
                .equals(other.isRefreshing, isRefreshing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderType),
      const DeepCollectionEquality().hash(oldEdited),
      const DeepCollectionEquality().hash(editMode),
      const DeepCollectionEquality().hash(isRefreshing));

  @JsonKey(ignore: true)
  @override
  $LodedOrderTypesCopyWith<LodedOrderTypes> get copyWith =>
      _$LodedOrderTypesCopyWithImpl<LodedOrderTypes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<OrderType> orderType,
            OldEditOrderTypeDto? oldEdited, bool editMode, bool isRefreshing)
        loaded,
  }) {
    return loaded(orderType, oldEdited, editMode, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<OrderType> orderType, OldEditOrderTypeDto? oldEdited,
            bool editMode, bool isRefreshing)?
        loaded,
  }) {
    return loaded?.call(orderType, oldEdited, editMode, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<OrderType> orderType, OldEditOrderTypeDto? oldEdited,
            bool editMode, bool isRefreshing)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(orderType, oldEdited, editMode, isRefreshing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderTypes value) init,
    required TResult Function(LodedOrderTypes value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitOrderTypes value)? init,
    TResult Function(LodedOrderTypes value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderTypes value)? init,
    TResult Function(LodedOrderTypes value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LodedOrderTypes implements OrderTypeMangeState {
  const factory LodedOrderTypes(
      {required List<OrderType> orderType,
      OldEditOrderTypeDto? oldEdited,
      bool editMode,
      bool isRefreshing}) = _$LodedOrderTypes;

  List<OrderType> get orderType;
  OldEditOrderTypeDto? get oldEdited;
  bool get editMode;
  bool get isRefreshing;
  @JsonKey(ignore: true)
  $LodedOrderTypesCopyWith<LodedOrderTypes> get copyWith =>
      throw _privateConstructorUsedError;
}
