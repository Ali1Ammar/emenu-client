// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_mange_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MealMangeStateTearOff {
  const _$MealMangeStateTearOff();

  InitMeals init([bool isError = false]) {
    return InitMeals(
      isError,
    );
  }

  LodedMeals loaded(
      {required List<Meal> meals,
      required List<Meal> searchedMeals,
      dynamic addNewMeal = false,
      bool isRefreshing = false}) {
    return LodedMeals(
      meals: meals,
      searchedMeals: searchedMeals,
      addNewMeal: addNewMeal,
      isRefreshing: isRefreshing,
    );
  }
}

/// @nodoc
const $MealMangeState = _$MealMangeStateTearOff();

/// @nodoc
mixin _$MealMangeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<Meal> meals, List<Meal> searchedMeals,
            dynamic addNewMeal, bool isRefreshing)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<Meal> meals, List<Meal> searchedMeals,
            dynamic addNewMeal, bool isRefreshing)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<Meal> meals, List<Meal> searchedMeals,
            dynamic addNewMeal, bool isRefreshing)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMeals value) init,
    required TResult Function(LodedMeals value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMeals value)? init,
    TResult Function(LodedMeals value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMeals value)? init,
    TResult Function(LodedMeals value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealMangeStateCopyWith<$Res> {
  factory $MealMangeStateCopyWith(
          MealMangeState value, $Res Function(MealMangeState) then) =
      _$MealMangeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MealMangeStateCopyWithImpl<$Res>
    implements $MealMangeStateCopyWith<$Res> {
  _$MealMangeStateCopyWithImpl(this._value, this._then);

  final MealMangeState _value;
  // ignore: unused_field
  final $Res Function(MealMangeState) _then;
}

/// @nodoc
abstract class $InitMealsCopyWith<$Res> {
  factory $InitMealsCopyWith(InitMeals value, $Res Function(InitMeals) then) =
      _$InitMealsCopyWithImpl<$Res>;
  $Res call({bool isError});
}

/// @nodoc
class _$InitMealsCopyWithImpl<$Res> extends _$MealMangeStateCopyWithImpl<$Res>
    implements $InitMealsCopyWith<$Res> {
  _$InitMealsCopyWithImpl(InitMeals _value, $Res Function(InitMeals) _then)
      : super(_value, (v) => _then(v as InitMeals));

  @override
  InitMeals get _value => super._value as InitMeals;

  @override
  $Res call({
    Object? isError = freezed,
  }) {
    return _then(InitMeals(
      isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitMeals implements InitMeals {
  const _$InitMeals([this.isError = false]);

  @JsonKey()
  @override
  final bool isError;

  @override
  String toString() {
    return 'MealMangeState.init(isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitMeals &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  $InitMealsCopyWith<InitMeals> get copyWith =>
      _$InitMealsCopyWithImpl<InitMeals>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<Meal> meals, List<Meal> searchedMeals,
            dynamic addNewMeal, bool isRefreshing)
        loaded,
  }) {
    return init(isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<Meal> meals, List<Meal> searchedMeals,
            dynamic addNewMeal, bool isRefreshing)?
        loaded,
  }) {
    return init?.call(isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<Meal> meals, List<Meal> searchedMeals,
            dynamic addNewMeal, bool isRefreshing)?
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
    required TResult Function(InitMeals value) init,
    required TResult Function(LodedMeals value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMeals value)? init,
    TResult Function(LodedMeals value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMeals value)? init,
    TResult Function(LodedMeals value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitMeals implements MealMangeState {
  const factory InitMeals([bool isError]) = _$InitMeals;

  bool get isError;
  @JsonKey(ignore: true)
  $InitMealsCopyWith<InitMeals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LodedMealsCopyWith<$Res> {
  factory $LodedMealsCopyWith(
          LodedMeals value, $Res Function(LodedMeals) then) =
      _$LodedMealsCopyWithImpl<$Res>;
  $Res call(
      {List<Meal> meals,
      List<Meal> searchedMeals,
      dynamic addNewMeal,
      bool isRefreshing});
}

/// @nodoc
class _$LodedMealsCopyWithImpl<$Res> extends _$MealMangeStateCopyWithImpl<$Res>
    implements $LodedMealsCopyWith<$Res> {
  _$LodedMealsCopyWithImpl(LodedMeals _value, $Res Function(LodedMeals) _then)
      : super(_value, (v) => _then(v as LodedMeals));

  @override
  LodedMeals get _value => super._value as LodedMeals;

  @override
  $Res call({
    Object? meals = freezed,
    Object? searchedMeals = freezed,
    Object? addNewMeal = freezed,
    Object? isRefreshing = freezed,
  }) {
    return _then(LodedMeals(
      meals: meals == freezed
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      searchedMeals: searchedMeals == freezed
          ? _value.searchedMeals
          : searchedMeals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      addNewMeal: addNewMeal == freezed ? _value.addNewMeal : addNewMeal,
      isRefreshing: isRefreshing == freezed
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LodedMeals implements LodedMeals {
  const _$LodedMeals(
      {required this.meals,
      required this.searchedMeals,
      this.addNewMeal = false,
      this.isRefreshing = false});

  @override
  final List<Meal> meals;
  @override
  final List<Meal> searchedMeals;
  @JsonKey()
  @override
  final dynamic addNewMeal;
  @JsonKey()
  @override
  final bool isRefreshing;

  @override
  String toString() {
    return 'MealMangeState.loaded(meals: $meals, searchedMeals: $searchedMeals, addNewMeal: $addNewMeal, isRefreshing: $isRefreshing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LodedMeals &&
            const DeepCollectionEquality().equals(other.meals, meals) &&
            const DeepCollectionEquality()
                .equals(other.searchedMeals, searchedMeals) &&
            const DeepCollectionEquality()
                .equals(other.addNewMeal, addNewMeal) &&
            const DeepCollectionEquality()
                .equals(other.isRefreshing, isRefreshing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meals),
      const DeepCollectionEquality().hash(searchedMeals),
      const DeepCollectionEquality().hash(addNewMeal),
      const DeepCollectionEquality().hash(isRefreshing));

  @JsonKey(ignore: true)
  @override
  $LodedMealsCopyWith<LodedMeals> get copyWith =>
      _$LodedMealsCopyWithImpl<LodedMeals>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<Meal> meals, List<Meal> searchedMeals,
            dynamic addNewMeal, bool isRefreshing)
        loaded,
  }) {
    return loaded(meals, searchedMeals, addNewMeal, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<Meal> meals, List<Meal> searchedMeals,
            dynamic addNewMeal, bool isRefreshing)?
        loaded,
  }) {
    return loaded?.call(meals, searchedMeals, addNewMeal, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<Meal> meals, List<Meal> searchedMeals,
            dynamic addNewMeal, bool isRefreshing)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(meals, searchedMeals, addNewMeal, isRefreshing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMeals value) init,
    required TResult Function(LodedMeals value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMeals value)? init,
    TResult Function(LodedMeals value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMeals value)? init,
    TResult Function(LodedMeals value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LodedMeals implements MealMangeState {
  const factory LodedMeals(
      {required List<Meal> meals,
      required List<Meal> searchedMeals,
      dynamic addNewMeal,
      bool isRefreshing}) = _$LodedMeals;

  List<Meal> get meals;
  List<Meal> get searchedMeals;
  dynamic get addNewMeal;
  bool get isRefreshing;
  @JsonKey(ignore: true)
  $LodedMealsCopyWith<LodedMeals> get copyWith =>
      throw _privateConstructorUsedError;
}
