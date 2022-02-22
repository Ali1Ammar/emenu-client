// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_track_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderTrackStateTearOff {
  const _$OrderTrackStateTearOff();

  _OrderTrackState call(
      Order order,
      List<OrderChange> orderChange,
      bool isListen,
      OrderStatus currentStatus,
      bool isPayed,
      List<OrderStatus> statusStep) {
    return _OrderTrackState(
      order,
      orderChange,
      isListen,
      currentStatus,
      isPayed,
      statusStep,
    );
  }
}

/// @nodoc
const $OrderTrackState = _$OrderTrackStateTearOff();

/// @nodoc
mixin _$OrderTrackState {
  Order get order => throw _privateConstructorUsedError;
  List<OrderChange> get orderChange => throw _privateConstructorUsedError;
  bool get isListen => throw _privateConstructorUsedError;
  OrderStatus get currentStatus => throw _privateConstructorUsedError;
  bool get isPayed => throw _privateConstructorUsedError;
  List<OrderStatus> get statusStep => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderTrackStateCopyWith<OrderTrackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTrackStateCopyWith<$Res> {
  factory $OrderTrackStateCopyWith(
          OrderTrackState value, $Res Function(OrderTrackState) then) =
      _$OrderTrackStateCopyWithImpl<$Res>;
  $Res call(
      {Order order,
      List<OrderChange> orderChange,
      bool isListen,
      OrderStatus currentStatus,
      bool isPayed,
      List<OrderStatus> statusStep});
}

/// @nodoc
class _$OrderTrackStateCopyWithImpl<$Res>
    implements $OrderTrackStateCopyWith<$Res> {
  _$OrderTrackStateCopyWithImpl(this._value, this._then);

  final OrderTrackState _value;
  // ignore: unused_field
  final $Res Function(OrderTrackState) _then;

  @override
  $Res call({
    Object? order = freezed,
    Object? orderChange = freezed,
    Object? isListen = freezed,
    Object? currentStatus = freezed,
    Object? isPayed = freezed,
    Object? statusStep = freezed,
  }) {
    return _then(_value.copyWith(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      orderChange: orderChange == freezed
          ? _value.orderChange
          : orderChange // ignore: cast_nullable_to_non_nullable
              as List<OrderChange>,
      isListen: isListen == freezed
          ? _value.isListen
          : isListen // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStatus: currentStatus == freezed
          ? _value.currentStatus
          : currentStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      isPayed: isPayed == freezed
          ? _value.isPayed
          : isPayed // ignore: cast_nullable_to_non_nullable
              as bool,
      statusStep: statusStep == freezed
          ? _value.statusStep
          : statusStep // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>,
    ));
  }
}

/// @nodoc
abstract class _$OrderTrackStateCopyWith<$Res>
    implements $OrderTrackStateCopyWith<$Res> {
  factory _$OrderTrackStateCopyWith(
          _OrderTrackState value, $Res Function(_OrderTrackState) then) =
      __$OrderTrackStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Order order,
      List<OrderChange> orderChange,
      bool isListen,
      OrderStatus currentStatus,
      bool isPayed,
      List<OrderStatus> statusStep});
}

/// @nodoc
class __$OrderTrackStateCopyWithImpl<$Res>
    extends _$OrderTrackStateCopyWithImpl<$Res>
    implements _$OrderTrackStateCopyWith<$Res> {
  __$OrderTrackStateCopyWithImpl(
      _OrderTrackState _value, $Res Function(_OrderTrackState) _then)
      : super(_value, (v) => _then(v as _OrderTrackState));

  @override
  _OrderTrackState get _value => super._value as _OrderTrackState;

  @override
  $Res call({
    Object? order = freezed,
    Object? orderChange = freezed,
    Object? isListen = freezed,
    Object? currentStatus = freezed,
    Object? isPayed = freezed,
    Object? statusStep = freezed,
  }) {
    return _then(_OrderTrackState(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      orderChange == freezed
          ? _value.orderChange
          : orderChange // ignore: cast_nullable_to_non_nullable
              as List<OrderChange>,
      isListen == freezed
          ? _value.isListen
          : isListen // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStatus == freezed
          ? _value.currentStatus
          : currentStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      isPayed == freezed
          ? _value.isPayed
          : isPayed // ignore: cast_nullable_to_non_nullable
              as bool,
      statusStep == freezed
          ? _value.statusStep
          : statusStep // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>,
    ));
  }
}

/// @nodoc

class _$_OrderTrackState implements _OrderTrackState {
  const _$_OrderTrackState(this.order, this.orderChange, this.isListen,
      this.currentStatus, this.isPayed, this.statusStep);

  @override
  final Order order;
  @override
  final List<OrderChange> orderChange;
  @override
  final bool isListen;
  @override
  final OrderStatus currentStatus;
  @override
  final bool isPayed;
  @override
  final List<OrderStatus> statusStep;

  @override
  String toString() {
    return 'OrderTrackState(order: $order, orderChange: $orderChange, isListen: $isListen, currentStatus: $currentStatus, isPayed: $isPayed, statusStep: $statusStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderTrackState &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality()
                .equals(other.orderChange, orderChange) &&
            const DeepCollectionEquality().equals(other.isListen, isListen) &&
            const DeepCollectionEquality()
                .equals(other.currentStatus, currentStatus) &&
            const DeepCollectionEquality().equals(other.isPayed, isPayed) &&
            const DeepCollectionEquality()
                .equals(other.statusStep, statusStep));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(orderChange),
      const DeepCollectionEquality().hash(isListen),
      const DeepCollectionEquality().hash(currentStatus),
      const DeepCollectionEquality().hash(isPayed),
      const DeepCollectionEquality().hash(statusStep));

  @JsonKey(ignore: true)
  @override
  _$OrderTrackStateCopyWith<_OrderTrackState> get copyWith =>
      __$OrderTrackStateCopyWithImpl<_OrderTrackState>(this, _$identity);
}

abstract class _OrderTrackState implements OrderTrackState {
  const factory _OrderTrackState(
      Order order,
      List<OrderChange> orderChange,
      bool isListen,
      OrderStatus currentStatus,
      bool isPayed,
      List<OrderStatus> statusStep) = _$_OrderTrackState;

  @override
  Order get order;
  @override
  List<OrderChange> get orderChange;
  @override
  bool get isListen;
  @override
  OrderStatus get currentStatus;
  @override
  bool get isPayed;
  @override
  List<OrderStatus> get statusStep;
  @override
  @JsonKey(ignore: true)
  _$OrderTrackStateCopyWith<_OrderTrackState> get copyWith =>
      throw _privateConstructorUsedError;
}
