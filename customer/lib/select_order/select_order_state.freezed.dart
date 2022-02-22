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

  SelectCategoty selectCategory() {
    return const SelectCategoty();
  }

  SelectMeal selectMeal(MainCategory mainCategory) {
    return SelectMeal(
      mainCategory,
    );
  }

  AddMeal addMeal(
      MainCategory mainCategory, SubCategory subCategory, Meal meal) {
    return AddMeal(
      mainCategory,
      subCategory,
      meal,
    );
  }

  OrderList orderList() {
    return const OrderList();
  }
}

/// @nodoc
const $SelectFlow = _$SelectFlowTearOff();

/// @nodoc
mixin _$SelectFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectCategory,
    required TResult Function(MainCategory mainCategory) selectMeal,
    required TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)
        addMeal,
    required TResult Function() orderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? selectCategory,
    TResult Function(MainCategory mainCategory)? selectMeal,
    TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)?
        addMeal,
    TResult Function()? orderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectCategory,
    TResult Function(MainCategory mainCategory)? selectMeal,
    TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)?
        addMeal,
    TResult Function()? orderList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategoty value) selectCategory,
    required TResult Function(SelectMeal value) selectMeal,
    required TResult Function(AddMeal value) addMeal,
    required TResult Function(OrderList value) orderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectCategoty value)? selectCategory,
    TResult Function(SelectMeal value)? selectMeal,
    TResult Function(AddMeal value)? addMeal,
    TResult Function(OrderList value)? orderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategoty value)? selectCategory,
    TResult Function(SelectMeal value)? selectMeal,
    TResult Function(AddMeal value)? addMeal,
    TResult Function(OrderList value)? orderList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectFlowCopyWith<$Res> {
  factory $SelectFlowCopyWith(
          SelectFlow value, $Res Function(SelectFlow) then) =
      _$SelectFlowCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectFlowCopyWithImpl<$Res> implements $SelectFlowCopyWith<$Res> {
  _$SelectFlowCopyWithImpl(this._value, this._then);

  final SelectFlow _value;
  // ignore: unused_field
  final $Res Function(SelectFlow) _then;
}

/// @nodoc
abstract class $SelectCategotyCopyWith<$Res> {
  factory $SelectCategotyCopyWith(
          SelectCategoty value, $Res Function(SelectCategoty) then) =
      _$SelectCategotyCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectCategotyCopyWithImpl<$Res> extends _$SelectFlowCopyWithImpl<$Res>
    implements $SelectCategotyCopyWith<$Res> {
  _$SelectCategotyCopyWithImpl(
      SelectCategoty _value, $Res Function(SelectCategoty) _then)
      : super(_value, (v) => _then(v as SelectCategoty));

  @override
  SelectCategoty get _value => super._value as SelectCategoty;
}

/// @nodoc

class _$SelectCategoty implements SelectCategoty {
  const _$SelectCategoty();

  @override
  String toString() {
    return 'SelectFlow.selectCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SelectCategoty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectCategory,
    required TResult Function(MainCategory mainCategory) selectMeal,
    required TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)
        addMeal,
    required TResult Function() orderList,
  }) {
    return selectCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? selectCategory,
    TResult Function(MainCategory mainCategory)? selectMeal,
    TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)?
        addMeal,
    TResult Function()? orderList,
  }) {
    return selectCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectCategory,
    TResult Function(MainCategory mainCategory)? selectMeal,
    TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)?
        addMeal,
    TResult Function()? orderList,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategoty value) selectCategory,
    required TResult Function(SelectMeal value) selectMeal,
    required TResult Function(AddMeal value) addMeal,
    required TResult Function(OrderList value) orderList,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectCategoty value)? selectCategory,
    TResult Function(SelectMeal value)? selectMeal,
    TResult Function(AddMeal value)? addMeal,
    TResult Function(OrderList value)? orderList,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategoty value)? selectCategory,
    TResult Function(SelectMeal value)? selectMeal,
    TResult Function(AddMeal value)? addMeal,
    TResult Function(OrderList value)? orderList,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class SelectCategoty implements SelectFlow {
  const factory SelectCategoty() = _$SelectCategoty;
}

/// @nodoc
abstract class $SelectMealCopyWith<$Res> {
  factory $SelectMealCopyWith(
          SelectMeal value, $Res Function(SelectMeal) then) =
      _$SelectMealCopyWithImpl<$Res>;
  $Res call({MainCategory mainCategory});
}

/// @nodoc
class _$SelectMealCopyWithImpl<$Res> extends _$SelectFlowCopyWithImpl<$Res>
    implements $SelectMealCopyWith<$Res> {
  _$SelectMealCopyWithImpl(SelectMeal _value, $Res Function(SelectMeal) _then)
      : super(_value, (v) => _then(v as SelectMeal));

  @override
  SelectMeal get _value => super._value as SelectMeal;

  @override
  $Res call({
    Object? mainCategory = freezed,
  }) {
    return _then(SelectMeal(
      mainCategory == freezed
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as MainCategory,
    ));
  }
}

/// @nodoc

class _$SelectMeal implements SelectMeal {
  const _$SelectMeal(this.mainCategory);

  @override
  final MainCategory mainCategory;

  @override
  String toString() {
    return 'SelectFlow.selectMeal(mainCategory: $mainCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectMeal &&
            const DeepCollectionEquality()
                .equals(other.mainCategory, mainCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mainCategory));

  @JsonKey(ignore: true)
  @override
  $SelectMealCopyWith<SelectMeal> get copyWith =>
      _$SelectMealCopyWithImpl<SelectMeal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectCategory,
    required TResult Function(MainCategory mainCategory) selectMeal,
    required TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)
        addMeal,
    required TResult Function() orderList,
  }) {
    return selectMeal(mainCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? selectCategory,
    TResult Function(MainCategory mainCategory)? selectMeal,
    TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)?
        addMeal,
    TResult Function()? orderList,
  }) {
    return selectMeal?.call(mainCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectCategory,
    TResult Function(MainCategory mainCategory)? selectMeal,
    TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)?
        addMeal,
    TResult Function()? orderList,
    required TResult orElse(),
  }) {
    if (selectMeal != null) {
      return selectMeal(mainCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategoty value) selectCategory,
    required TResult Function(SelectMeal value) selectMeal,
    required TResult Function(AddMeal value) addMeal,
    required TResult Function(OrderList value) orderList,
  }) {
    return selectMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectCategoty value)? selectCategory,
    TResult Function(SelectMeal value)? selectMeal,
    TResult Function(AddMeal value)? addMeal,
    TResult Function(OrderList value)? orderList,
  }) {
    return selectMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategoty value)? selectCategory,
    TResult Function(SelectMeal value)? selectMeal,
    TResult Function(AddMeal value)? addMeal,
    TResult Function(OrderList value)? orderList,
    required TResult orElse(),
  }) {
    if (selectMeal != null) {
      return selectMeal(this);
    }
    return orElse();
  }
}

abstract class SelectMeal implements SelectFlow {
  const factory SelectMeal(MainCategory mainCategory) = _$SelectMeal;

  MainCategory get mainCategory;
  @JsonKey(ignore: true)
  $SelectMealCopyWith<SelectMeal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMealCopyWith<$Res> {
  factory $AddMealCopyWith(AddMeal value, $Res Function(AddMeal) then) =
      _$AddMealCopyWithImpl<$Res>;
  $Res call({MainCategory mainCategory, SubCategory subCategory, Meal meal});
}

/// @nodoc
class _$AddMealCopyWithImpl<$Res> extends _$SelectFlowCopyWithImpl<$Res>
    implements $AddMealCopyWith<$Res> {
  _$AddMealCopyWithImpl(AddMeal _value, $Res Function(AddMeal) _then)
      : super(_value, (v) => _then(v as AddMeal));

  @override
  AddMeal get _value => super._value as AddMeal;

  @override
  $Res call({
    Object? mainCategory = freezed,
    Object? subCategory = freezed,
    Object? meal = freezed,
  }) {
    return _then(AddMeal(
      mainCategory == freezed
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as MainCategory,
      subCategory == freezed
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory,
      meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as Meal,
    ));
  }
}

/// @nodoc

class _$AddMeal implements AddMeal {
  const _$AddMeal(this.mainCategory, this.subCategory, this.meal);

  @override
  final MainCategory mainCategory;
  @override
  final SubCategory subCategory;
  @override
  final Meal meal;

  @override
  String toString() {
    return 'SelectFlow.addMeal(mainCategory: $mainCategory, subCategory: $subCategory, meal: $meal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddMeal &&
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
  $AddMealCopyWith<AddMeal> get copyWith =>
      _$AddMealCopyWithImpl<AddMeal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectCategory,
    required TResult Function(MainCategory mainCategory) selectMeal,
    required TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)
        addMeal,
    required TResult Function() orderList,
  }) {
    return addMeal(mainCategory, subCategory, meal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? selectCategory,
    TResult Function(MainCategory mainCategory)? selectMeal,
    TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)?
        addMeal,
    TResult Function()? orderList,
  }) {
    return addMeal?.call(mainCategory, subCategory, meal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectCategory,
    TResult Function(MainCategory mainCategory)? selectMeal,
    TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)?
        addMeal,
    TResult Function()? orderList,
    required TResult orElse(),
  }) {
    if (addMeal != null) {
      return addMeal(mainCategory, subCategory, meal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategoty value) selectCategory,
    required TResult Function(SelectMeal value) selectMeal,
    required TResult Function(AddMeal value) addMeal,
    required TResult Function(OrderList value) orderList,
  }) {
    return addMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectCategoty value)? selectCategory,
    TResult Function(SelectMeal value)? selectMeal,
    TResult Function(AddMeal value)? addMeal,
    TResult Function(OrderList value)? orderList,
  }) {
    return addMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategoty value)? selectCategory,
    TResult Function(SelectMeal value)? selectMeal,
    TResult Function(AddMeal value)? addMeal,
    TResult Function(OrderList value)? orderList,
    required TResult orElse(),
  }) {
    if (addMeal != null) {
      return addMeal(this);
    }
    return orElse();
  }
}

abstract class AddMeal implements SelectFlow {
  const factory AddMeal(
          MainCategory mainCategory, SubCategory subCategory, Meal meal) =
      _$AddMeal;

  MainCategory get mainCategory;
  SubCategory get subCategory;
  Meal get meal;
  @JsonKey(ignore: true)
  $AddMealCopyWith<AddMeal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListCopyWith<$Res> {
  factory $OrderListCopyWith(OrderList value, $Res Function(OrderList) then) =
      _$OrderListCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderListCopyWithImpl<$Res> extends _$SelectFlowCopyWithImpl<$Res>
    implements $OrderListCopyWith<$Res> {
  _$OrderListCopyWithImpl(OrderList _value, $Res Function(OrderList) _then)
      : super(_value, (v) => _then(v as OrderList));

  @override
  OrderList get _value => super._value as OrderList;
}

/// @nodoc

class _$OrderList implements OrderList {
  const _$OrderList();

  @override
  String toString() {
    return 'SelectFlow.orderList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectCategory,
    required TResult Function(MainCategory mainCategory) selectMeal,
    required TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)
        addMeal,
    required TResult Function() orderList,
  }) {
    return orderList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? selectCategory,
    TResult Function(MainCategory mainCategory)? selectMeal,
    TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)?
        addMeal,
    TResult Function()? orderList,
  }) {
    return orderList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectCategory,
    TResult Function(MainCategory mainCategory)? selectMeal,
    TResult Function(
            MainCategory mainCategory, SubCategory subCategory, Meal meal)?
        addMeal,
    TResult Function()? orderList,
    required TResult orElse(),
  }) {
    if (orderList != null) {
      return orderList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategoty value) selectCategory,
    required TResult Function(SelectMeal value) selectMeal,
    required TResult Function(AddMeal value) addMeal,
    required TResult Function(OrderList value) orderList,
  }) {
    return orderList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectCategoty value)? selectCategory,
    TResult Function(SelectMeal value)? selectMeal,
    TResult Function(AddMeal value)? addMeal,
    TResult Function(OrderList value)? orderList,
  }) {
    return orderList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategoty value)? selectCategory,
    TResult Function(SelectMeal value)? selectMeal,
    TResult Function(AddMeal value)? addMeal,
    TResult Function(OrderList value)? orderList,
    required TResult orElse(),
  }) {
    if (orderList != null) {
      return orderList(this);
    }
    return orElse();
  }
}

abstract class OrderList implements SelectFlow {
  const factory OrderList() = _$OrderList;
}
