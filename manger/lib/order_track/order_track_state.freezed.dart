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

  OrderTrackStateLoading init(OrderTrack input) {
    return OrderTrackStateLoading(
      input,
    );
  }

  OrderTrackStateLoaded loaded(
      {required List<Order> allOrders,
      required List<Order> filteredOrder,
      required List<OrderStatus> selectedQueryStatus}) {
    return OrderTrackStateLoaded(
      allOrders: allOrders,
      filteredOrder: filteredOrder,
      selectedQueryStatus: selectedQueryStatus,
    );
  }
}

/// @nodoc
const $OrderTrackState = _$OrderTrackStateTearOff();

/// @nodoc
mixin _$OrderTrackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderTrack input) init,
    required TResult Function(List<Order> allOrders, List<Order> filteredOrder,
            List<OrderStatus> selectedQueryStatus)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OrderTrack input)? init,
    TResult Function(List<Order> allOrders, List<Order> filteredOrder,
            List<OrderStatus> selectedQueryStatus)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderTrack input)? init,
    TResult Function(List<Order> allOrders, List<Order> filteredOrder,
            List<OrderStatus> selectedQueryStatus)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderTrackStateLoading value) init,
    required TResult Function(OrderTrackStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrderTrackStateLoading value)? init,
    TResult Function(OrderTrackStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderTrackStateLoading value)? init,
    TResult Function(OrderTrackStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTrackStateCopyWith<$Res> {
  factory $OrderTrackStateCopyWith(
          OrderTrackState value, $Res Function(OrderTrackState) then) =
      _$OrderTrackStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderTrackStateCopyWithImpl<$Res>
    implements $OrderTrackStateCopyWith<$Res> {
  _$OrderTrackStateCopyWithImpl(this._value, this._then);

  final OrderTrackState _value;
  // ignore: unused_field
  final $Res Function(OrderTrackState) _then;
}

/// @nodoc
abstract class $OrderTrackStateLoadingCopyWith<$Res> {
  factory $OrderTrackStateLoadingCopyWith(OrderTrackStateLoading value,
          $Res Function(OrderTrackStateLoading) then) =
      _$OrderTrackStateLoadingCopyWithImpl<$Res>;
  $Res call({OrderTrack input});
}

/// @nodoc
class _$OrderTrackStateLoadingCopyWithImpl<$Res>
    extends _$OrderTrackStateCopyWithImpl<$Res>
    implements $OrderTrackStateLoadingCopyWith<$Res> {
  _$OrderTrackStateLoadingCopyWithImpl(OrderTrackStateLoading _value,
      $Res Function(OrderTrackStateLoading) _then)
      : super(_value, (v) => _then(v as OrderTrackStateLoading));

  @override
  OrderTrackStateLoading get _value => super._value as OrderTrackStateLoading;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(OrderTrackStateLoading(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as OrderTrack,
    ));
  }
}

/// @nodoc

class _$OrderTrackStateLoading implements OrderTrackStateLoading {
  const _$OrderTrackStateLoading(this.input);

  @override
  final OrderTrack input;

  @override
  String toString() {
    return 'OrderTrackState.init(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderTrackStateLoading &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $OrderTrackStateLoadingCopyWith<OrderTrackStateLoading> get copyWith =>
      _$OrderTrackStateLoadingCopyWithImpl<OrderTrackStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderTrack input) init,
    required TResult Function(List<Order> allOrders, List<Order> filteredOrder,
            List<OrderStatus> selectedQueryStatus)
        loaded,
  }) {
    return init(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OrderTrack input)? init,
    TResult Function(List<Order> allOrders, List<Order> filteredOrder,
            List<OrderStatus> selectedQueryStatus)?
        loaded,
  }) {
    return init?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderTrack input)? init,
    TResult Function(List<Order> allOrders, List<Order> filteredOrder,
            List<OrderStatus> selectedQueryStatus)?
        loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderTrackStateLoading value) init,
    required TResult Function(OrderTrackStateLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrderTrackStateLoading value)? init,
    TResult Function(OrderTrackStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderTrackStateLoading value)? init,
    TResult Function(OrderTrackStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class OrderTrackStateLoading implements OrderTrackState {
  const factory OrderTrackStateLoading(OrderTrack input) =
      _$OrderTrackStateLoading;

  OrderTrack get input;
  @JsonKey(ignore: true)
  $OrderTrackStateLoadingCopyWith<OrderTrackStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTrackStateLoadedCopyWith<$Res> {
  factory $OrderTrackStateLoadedCopyWith(OrderTrackStateLoaded value,
          $Res Function(OrderTrackStateLoaded) then) =
      _$OrderTrackStateLoadedCopyWithImpl<$Res>;
  $Res call(
      {List<Order> allOrders,
      List<Order> filteredOrder,
      List<OrderStatus> selectedQueryStatus});
}

/// @nodoc
class _$OrderTrackStateLoadedCopyWithImpl<$Res>
    extends _$OrderTrackStateCopyWithImpl<$Res>
    implements $OrderTrackStateLoadedCopyWith<$Res> {
  _$OrderTrackStateLoadedCopyWithImpl(
      OrderTrackStateLoaded _value, $Res Function(OrderTrackStateLoaded) _then)
      : super(_value, (v) => _then(v as OrderTrackStateLoaded));

  @override
  OrderTrackStateLoaded get _value => super._value as OrderTrackStateLoaded;

  @override
  $Res call({
    Object? allOrders = freezed,
    Object? filteredOrder = freezed,
    Object? selectedQueryStatus = freezed,
  }) {
    return _then(OrderTrackStateLoaded(
      allOrders: allOrders == freezed
          ? _value.allOrders
          : allOrders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      filteredOrder: filteredOrder == freezed
          ? _value.filteredOrder
          : filteredOrder // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      selectedQueryStatus: selectedQueryStatus == freezed
          ? _value.selectedQueryStatus
          : selectedQueryStatus // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>,
    ));
  }
}

/// @nodoc

class _$OrderTrackStateLoaded implements OrderTrackStateLoaded {
  const _$OrderTrackStateLoaded(
      {required this.allOrders,
      required this.filteredOrder,
      required this.selectedQueryStatus});

  @override
  final List<Order> allOrders;
  @override
  final List<Order> filteredOrder;
  @override
  final List<OrderStatus> selectedQueryStatus;

  @override
  String toString() {
    return 'OrderTrackState.loaded(allOrders: $allOrders, filteredOrder: $filteredOrder, selectedQueryStatus: $selectedQueryStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderTrackStateLoaded &&
            const DeepCollectionEquality().equals(other.allOrders, allOrders) &&
            const DeepCollectionEquality()
                .equals(other.filteredOrder, filteredOrder) &&
            const DeepCollectionEquality()
                .equals(other.selectedQueryStatus, selectedQueryStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allOrders),
      const DeepCollectionEquality().hash(filteredOrder),
      const DeepCollectionEquality().hash(selectedQueryStatus));

  @JsonKey(ignore: true)
  @override
  $OrderTrackStateLoadedCopyWith<OrderTrackStateLoaded> get copyWith =>
      _$OrderTrackStateLoadedCopyWithImpl<OrderTrackStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderTrack input) init,
    required TResult Function(List<Order> allOrders, List<Order> filteredOrder,
            List<OrderStatus> selectedQueryStatus)
        loaded,
  }) {
    return loaded(allOrders, filteredOrder, selectedQueryStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OrderTrack input)? init,
    TResult Function(List<Order> allOrders, List<Order> filteredOrder,
            List<OrderStatus> selectedQueryStatus)?
        loaded,
  }) {
    return loaded?.call(allOrders, filteredOrder, selectedQueryStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderTrack input)? init,
    TResult Function(List<Order> allOrders, List<Order> filteredOrder,
            List<OrderStatus> selectedQueryStatus)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(allOrders, filteredOrder, selectedQueryStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderTrackStateLoading value) init,
    required TResult Function(OrderTrackStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OrderTrackStateLoading value)? init,
    TResult Function(OrderTrackStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderTrackStateLoading value)? init,
    TResult Function(OrderTrackStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class OrderTrackStateLoaded implements OrderTrackState {
  const factory OrderTrackStateLoaded(
          {required List<Order> allOrders,
          required List<Order> filteredOrder,
          required List<OrderStatus> selectedQueryStatus}) =
      _$OrderTrackStateLoaded;

  List<Order> get allOrders;
  List<Order> get filteredOrder;
  List<OrderStatus> get selectedQueryStatus;
  @JsonKey(ignore: true)
  $OrderTrackStateLoadedCopyWith<OrderTrackStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
