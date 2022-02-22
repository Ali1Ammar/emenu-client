// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'select_meal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubCategotyStateTearOff {
  const _$SubCategotyStateTearOff();

  MealLoading loadingMeal() {
    return const MealLoading();
  }

  MealLoaded loaded(List<Meal> meals, bool isChecked) {
    return MealLoaded(
      meals,
      isChecked,
    );
  }
}

/// @nodoc
const $SubCategotyState = _$SubCategotyStateTearOff();

/// @nodoc
mixin _$SubCategotyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingMeal,
    required TResult Function(List<Meal> meals, bool isChecked) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingMeal,
    TResult Function(List<Meal> meals, bool isChecked)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingMeal,
    TResult Function(List<Meal> meals, bool isChecked)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MealLoading value) loadingMeal,
    required TResult Function(MealLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MealLoading value)? loadingMeal,
    TResult Function(MealLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MealLoading value)? loadingMeal,
    TResult Function(MealLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategotyStateCopyWith<$Res> {
  factory $SubCategotyStateCopyWith(
          SubCategotyState value, $Res Function(SubCategotyState) then) =
      _$SubCategotyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubCategotyStateCopyWithImpl<$Res>
    implements $SubCategotyStateCopyWith<$Res> {
  _$SubCategotyStateCopyWithImpl(this._value, this._then);

  final SubCategotyState _value;
  // ignore: unused_field
  final $Res Function(SubCategotyState) _then;
}

/// @nodoc
abstract class $MealLoadingCopyWith<$Res> {
  factory $MealLoadingCopyWith(
          MealLoading value, $Res Function(MealLoading) then) =
      _$MealLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MealLoadingCopyWithImpl<$Res>
    extends _$SubCategotyStateCopyWithImpl<$Res>
    implements $MealLoadingCopyWith<$Res> {
  _$MealLoadingCopyWithImpl(
      MealLoading _value, $Res Function(MealLoading) _then)
      : super(_value, (v) => _then(v as MealLoading));

  @override
  MealLoading get _value => super._value as MealLoading;
}

/// @nodoc

class _$MealLoading implements MealLoading {
  const _$MealLoading();

  @override
  String toString() {
    return 'SubCategotyState.loadingMeal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MealLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingMeal,
    required TResult Function(List<Meal> meals, bool isChecked) loaded,
  }) {
    return loadingMeal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingMeal,
    TResult Function(List<Meal> meals, bool isChecked)? loaded,
  }) {
    return loadingMeal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingMeal,
    TResult Function(List<Meal> meals, bool isChecked)? loaded,
    required TResult orElse(),
  }) {
    if (loadingMeal != null) {
      return loadingMeal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MealLoading value) loadingMeal,
    required TResult Function(MealLoaded value) loaded,
  }) {
    return loadingMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MealLoading value)? loadingMeal,
    TResult Function(MealLoaded value)? loaded,
  }) {
    return loadingMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MealLoading value)? loadingMeal,
    TResult Function(MealLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingMeal != null) {
      return loadingMeal(this);
    }
    return orElse();
  }
}

abstract class MealLoading implements SubCategotyState {
  const factory MealLoading() = _$MealLoading;
}

/// @nodoc
abstract class $MealLoadedCopyWith<$Res> {
  factory $MealLoadedCopyWith(
          MealLoaded value, $Res Function(MealLoaded) then) =
      _$MealLoadedCopyWithImpl<$Res>;
  $Res call({List<Meal> meals, bool isChecked});
}

/// @nodoc
class _$MealLoadedCopyWithImpl<$Res>
    extends _$SubCategotyStateCopyWithImpl<$Res>
    implements $MealLoadedCopyWith<$Res> {
  _$MealLoadedCopyWithImpl(MealLoaded _value, $Res Function(MealLoaded) _then)
      : super(_value, (v) => _then(v as MealLoaded));

  @override
  MealLoaded get _value => super._value as MealLoaded;

  @override
  $Res call({
    Object? meals = freezed,
    Object? isChecked = freezed,
  }) {
    return _then(MealLoaded(
      meals == freezed
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      isChecked == freezed
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MealLoaded implements MealLoaded {
  const _$MealLoaded(this.meals, this.isChecked);

  @override
  final List<Meal> meals;
  @override
  final bool isChecked;

  @override
  String toString() {
    return 'SubCategotyState.loaded(meals: $meals, isChecked: $isChecked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealLoaded &&
            const DeepCollectionEquality().equals(other.meals, meals) &&
            const DeepCollectionEquality().equals(other.isChecked, isChecked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meals),
      const DeepCollectionEquality().hash(isChecked));

  @JsonKey(ignore: true)
  @override
  $MealLoadedCopyWith<MealLoaded> get copyWith =>
      _$MealLoadedCopyWithImpl<MealLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingMeal,
    required TResult Function(List<Meal> meals, bool isChecked) loaded,
  }) {
    return loaded(meals, isChecked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingMeal,
    TResult Function(List<Meal> meals, bool isChecked)? loaded,
  }) {
    return loaded?.call(meals, isChecked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingMeal,
    TResult Function(List<Meal> meals, bool isChecked)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(meals, isChecked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MealLoading value) loadingMeal,
    required TResult Function(MealLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MealLoading value)? loadingMeal,
    TResult Function(MealLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MealLoading value)? loadingMeal,
    TResult Function(MealLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MealLoaded implements SubCategotyState {
  const factory MealLoaded(List<Meal> meals, bool isChecked) = _$MealLoaded;

  List<Meal> get meals;
  bool get isChecked;
  @JsonKey(ignore: true)
  $MealLoadedCopyWith<MealLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
