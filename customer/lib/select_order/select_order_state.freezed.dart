// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'select_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectOrderTearOff {
  const _$SelectOrderTearOff();

  Select select(List<SelectFlow> flow, List<CreateItemFlow> orderItems) {
    return Select(
      flow,
      orderItems,
    );
  }
}

/// @nodoc
const $SelectOrder = _$SelectOrderTearOff();

/// @nodoc
mixin _$SelectOrder {
  List<SelectFlow> get flow => throw _privateConstructorUsedError;
  List<CreateItemFlow> get orderItems => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SelectFlow> flow, List<CreateItemFlow> orderItems)
        select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<SelectFlow> flow, List<CreateItemFlow> orderItems)?
        select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SelectFlow> flow, List<CreateItemFlow> orderItems)?
        select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Select value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Select value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Select value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectOrderCopyWith<SelectOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectOrderCopyWith<$Res> {
  factory $SelectOrderCopyWith(
          SelectOrder value, $Res Function(SelectOrder) then) =
      _$SelectOrderCopyWithImpl<$Res>;
  $Res call({List<SelectFlow> flow, List<CreateItemFlow> orderItems});
}

/// @nodoc
class _$SelectOrderCopyWithImpl<$Res> implements $SelectOrderCopyWith<$Res> {
  _$SelectOrderCopyWithImpl(this._value, this._then);

  final SelectOrder _value;
  // ignore: unused_field
  final $Res Function(SelectOrder) _then;

  @override
  $Res call({
    Object? flow = freezed,
    Object? orderItems = freezed,
  }) {
    return _then(_value.copyWith(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as List<SelectFlow>,
      orderItems: orderItems == freezed
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<CreateItemFlow>,
    ));
  }
}

/// @nodoc
abstract class $SelectCopyWith<$Res> implements $SelectOrderCopyWith<$Res> {
  factory $SelectCopyWith(Select value, $Res Function(Select) then) =
      _$SelectCopyWithImpl<$Res>;
  @override
  $Res call({List<SelectFlow> flow, List<CreateItemFlow> orderItems});
}

/// @nodoc
class _$SelectCopyWithImpl<$Res> extends _$SelectOrderCopyWithImpl<$Res>
    implements $SelectCopyWith<$Res> {
  _$SelectCopyWithImpl(Select _value, $Res Function(Select) _then)
      : super(_value, (v) => _then(v as Select));

  @override
  Select get _value => super._value as Select;

  @override
  $Res call({
    Object? flow = freezed,
    Object? orderItems = freezed,
  }) {
    return _then(Select(
      flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as List<SelectFlow>,
      orderItems == freezed
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<CreateItemFlow>,
    ));
  }
}

/// @nodoc

class _$Select implements Select {
  const _$Select(this.flow, this.orderItems);

  @override
  final List<SelectFlow> flow;
  @override
  final List<CreateItemFlow> orderItems;

  @override
  String toString() {
    return 'SelectOrder.select(flow: $flow, orderItems: $orderItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Select &&
            const DeepCollectionEquality().equals(other.flow, flow) &&
            const DeepCollectionEquality()
                .equals(other.orderItems, orderItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flow),
      const DeepCollectionEquality().hash(orderItems));

  @JsonKey(ignore: true)
  @override
  $SelectCopyWith<Select> get copyWith =>
      _$SelectCopyWithImpl<Select>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SelectFlow> flow, List<CreateItemFlow> orderItems)
        select,
  }) {
    return select(flow, orderItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<SelectFlow> flow, List<CreateItemFlow> orderItems)?
        select,
  }) {
    return select?.call(flow, orderItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SelectFlow> flow, List<CreateItemFlow> orderItems)?
        select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(flow, orderItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Select value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Select value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Select value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class Select implements SelectOrder {
  const factory Select(List<SelectFlow> flow, List<CreateItemFlow> orderItems) =
      _$Select;

  @override
  List<SelectFlow> get flow;
  @override
  List<CreateItemFlow> get orderItems;
  @override
  @JsonKey(ignore: true)
  $SelectCopyWith<Select> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SelectFlowTearOff {
  const _$SelectFlowTearOff();

  _SelectFlow call(
      MainCategory? mainCategory, SubCategory? subCategory, Meal? meal) {
    return _SelectFlow(
      mainCategory,
      subCategory,
      meal,
    );
  }
}

/// @nodoc
const $SelectFlow = _$SelectFlowTearOff();

/// @nodoc
mixin _$SelectFlow {
  MainCategory? get mainCategory => throw _privateConstructorUsedError;
  SubCategory? get subCategory => throw _privateConstructorUsedError;
  Meal? get meal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectFlowCopyWith<SelectFlow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectFlowCopyWith<$Res> {
  factory $SelectFlowCopyWith(
          SelectFlow value, $Res Function(SelectFlow) then) =
      _$SelectFlowCopyWithImpl<$Res>;
  $Res call({MainCategory? mainCategory, SubCategory? subCategory, Meal? meal});
}

/// @nodoc
class _$SelectFlowCopyWithImpl<$Res> implements $SelectFlowCopyWith<$Res> {
  _$SelectFlowCopyWithImpl(this._value, this._then);

  final SelectFlow _value;
  // ignore: unused_field
  final $Res Function(SelectFlow) _then;

  @override
  $Res call({
    Object? mainCategory = freezed,
    Object? subCategory = freezed,
    Object? meal = freezed,
  }) {
    return _then(_value.copyWith(
      mainCategory: mainCategory == freezed
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as MainCategory?,
      subCategory: subCategory == freezed
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      meal: meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as Meal?,
    ));
  }
}

/// @nodoc
abstract class _$SelectFlowCopyWith<$Res> implements $SelectFlowCopyWith<$Res> {
  factory _$SelectFlowCopyWith(
          _SelectFlow value, $Res Function(_SelectFlow) then) =
      __$SelectFlowCopyWithImpl<$Res>;
  @override
  $Res call({MainCategory? mainCategory, SubCategory? subCategory, Meal? meal});
}

/// @nodoc
class __$SelectFlowCopyWithImpl<$Res> extends _$SelectFlowCopyWithImpl<$Res>
    implements _$SelectFlowCopyWith<$Res> {
  __$SelectFlowCopyWithImpl(
      _SelectFlow _value, $Res Function(_SelectFlow) _then)
      : super(_value, (v) => _then(v as _SelectFlow));

  @override
  _SelectFlow get _value => super._value as _SelectFlow;

  @override
  $Res call({
    Object? mainCategory = freezed,
    Object? subCategory = freezed,
    Object? meal = freezed,
  }) {
    return _then(_SelectFlow(
      mainCategory == freezed
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as MainCategory?,
      subCategory == freezed
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as Meal?,
    ));
  }
}

/// @nodoc

class _$_SelectFlow implements _SelectFlow {
  const _$_SelectFlow(this.mainCategory, this.subCategory, this.meal);

  @override
  final MainCategory? mainCategory;
  @override
  final SubCategory? subCategory;
  @override
  final Meal? meal;

  @override
  String toString() {
    return 'SelectFlow(mainCategory: $mainCategory, subCategory: $subCategory, meal: $meal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectFlow &&
            const DeepCollectionEquality()
                .equals(other.mainCategory, mainCategory) &&
            const DeepCollectionEquality()
                .equals(other.subCategory, subCategory) &&
            const DeepCollectionEquality().equals(other.meal, meal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mainCategory),
      const DeepCollectionEquality().hash(subCategory),
      const DeepCollectionEquality().hash(meal));

  @JsonKey(ignore: true)
  @override
  _$SelectFlowCopyWith<_SelectFlow> get copyWith =>
      __$SelectFlowCopyWithImpl<_SelectFlow>(this, _$identity);
}

abstract class _SelectFlow implements SelectFlow {
  const factory _SelectFlow(
          MainCategory? mainCategory, SubCategory? subCategory, Meal? meal) =
      _$_SelectFlow;

  @override
  MainCategory? get mainCategory;
  @override
  SubCategory? get subCategory;
  @override
  Meal? get meal;
  @override
  @JsonKey(ignore: true)
  _$SelectFlowCopyWith<_SelectFlow> get copyWith =>
      throw _privateConstructorUsedError;
}
