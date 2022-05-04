// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_spot_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomerSpotStateTearOff {
  const _$CustomerSpotStateTearOff();

  InitCustomerSpotState init([String? error]) {
    return InitCustomerSpotState(
      error,
    );
  }

  LoadedCustomerSpotState loaded(List<CustomerSpotWithQa> data,
      RealtionResturant resturant, bool isLoading, String? savingDirection) {
    return LoadedCustomerSpotState(
      data,
      resturant,
      isLoading,
      savingDirection,
    );
  }
}

/// @nodoc
const $CustomerSpotState = _$CustomerSpotStateTearOff();

/// @nodoc
mixin _$CustomerSpotState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) init,
    required TResult Function(
            List<CustomerSpotWithQa> data,
            RealtionResturant resturant,
            bool isLoading,
            String? savingDirection)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? error)? init,
    TResult Function(List<CustomerSpotWithQa> data, RealtionResturant resturant,
            bool isLoading, String? savingDirection)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? init,
    TResult Function(List<CustomerSpotWithQa> data, RealtionResturant resturant,
            bool isLoading, String? savingDirection)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCustomerSpotState value) init,
    required TResult Function(LoadedCustomerSpotState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitCustomerSpotState value)? init,
    TResult Function(LoadedCustomerSpotState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCustomerSpotState value)? init,
    TResult Function(LoadedCustomerSpotState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerSpotStateCopyWith<$Res> {
  factory $CustomerSpotStateCopyWith(
          CustomerSpotState value, $Res Function(CustomerSpotState) then) =
      _$CustomerSpotStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerSpotStateCopyWithImpl<$Res>
    implements $CustomerSpotStateCopyWith<$Res> {
  _$CustomerSpotStateCopyWithImpl(this._value, this._then);

  final CustomerSpotState _value;
  // ignore: unused_field
  final $Res Function(CustomerSpotState) _then;
}

/// @nodoc
abstract class $InitCustomerSpotStateCopyWith<$Res> {
  factory $InitCustomerSpotStateCopyWith(InitCustomerSpotState value,
          $Res Function(InitCustomerSpotState) then) =
      _$InitCustomerSpotStateCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$InitCustomerSpotStateCopyWithImpl<$Res>
    extends _$CustomerSpotStateCopyWithImpl<$Res>
    implements $InitCustomerSpotStateCopyWith<$Res> {
  _$InitCustomerSpotStateCopyWithImpl(
      InitCustomerSpotState _value, $Res Function(InitCustomerSpotState) _then)
      : super(_value, (v) => _then(v as InitCustomerSpotState));

  @override
  InitCustomerSpotState get _value => super._value as InitCustomerSpotState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(InitCustomerSpotState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitCustomerSpotState implements InitCustomerSpotState {
  const _$InitCustomerSpotState([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CustomerSpotState.init(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitCustomerSpotState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $InitCustomerSpotStateCopyWith<InitCustomerSpotState> get copyWith =>
      _$InitCustomerSpotStateCopyWithImpl<InitCustomerSpotState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) init,
    required TResult Function(
            List<CustomerSpotWithQa> data,
            RealtionResturant resturant,
            bool isLoading,
            String? savingDirection)
        loaded,
  }) {
    return init(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? error)? init,
    TResult Function(List<CustomerSpotWithQa> data, RealtionResturant resturant,
            bool isLoading, String? savingDirection)?
        loaded,
  }) {
    return init?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? init,
    TResult Function(List<CustomerSpotWithQa> data, RealtionResturant resturant,
            bool isLoading, String? savingDirection)?
        loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCustomerSpotState value) init,
    required TResult Function(LoadedCustomerSpotState value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitCustomerSpotState value)? init,
    TResult Function(LoadedCustomerSpotState value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCustomerSpotState value)? init,
    TResult Function(LoadedCustomerSpotState value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitCustomerSpotState implements CustomerSpotState {
  const factory InitCustomerSpotState([String? error]) =
      _$InitCustomerSpotState;

  String? get error;
  @JsonKey(ignore: true)
  $InitCustomerSpotStateCopyWith<InitCustomerSpotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCustomerSpotStateCopyWith<$Res> {
  factory $LoadedCustomerSpotStateCopyWith(LoadedCustomerSpotState value,
          $Res Function(LoadedCustomerSpotState) then) =
      _$LoadedCustomerSpotStateCopyWithImpl<$Res>;
  $Res call(
      {List<CustomerSpotWithQa> data,
      RealtionResturant resturant,
      bool isLoading,
      String? savingDirection});
}

/// @nodoc
class _$LoadedCustomerSpotStateCopyWithImpl<$Res>
    extends _$CustomerSpotStateCopyWithImpl<$Res>
    implements $LoadedCustomerSpotStateCopyWith<$Res> {
  _$LoadedCustomerSpotStateCopyWithImpl(LoadedCustomerSpotState _value,
      $Res Function(LoadedCustomerSpotState) _then)
      : super(_value, (v) => _then(v as LoadedCustomerSpotState));

  @override
  LoadedCustomerSpotState get _value => super._value as LoadedCustomerSpotState;

  @override
  $Res call({
    Object? data = freezed,
    Object? resturant = freezed,
    Object? isLoading = freezed,
    Object? savingDirection = freezed,
  }) {
    return _then(LoadedCustomerSpotState(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CustomerSpotWithQa>,
      resturant == freezed
          ? _value.resturant
          : resturant // ignore: cast_nullable_to_non_nullable
              as RealtionResturant,
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      savingDirection == freezed
          ? _value.savingDirection
          : savingDirection // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadedCustomerSpotState implements LoadedCustomerSpotState {
  const _$LoadedCustomerSpotState(
      this.data, this.resturant, this.isLoading, this.savingDirection);

  @override
  final List<CustomerSpotWithQa> data;
  @override
  final RealtionResturant resturant;
  @override
  final bool isLoading;
  @override
  final String? savingDirection;

  @override
  String toString() {
    return 'CustomerSpotState.loaded(data: $data, resturant: $resturant, isLoading: $isLoading, savingDirection: $savingDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedCustomerSpotState &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.resturant, resturant) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.savingDirection, savingDirection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(resturant),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(savingDirection));

  @JsonKey(ignore: true)
  @override
  $LoadedCustomerSpotStateCopyWith<LoadedCustomerSpotState> get copyWith =>
      _$LoadedCustomerSpotStateCopyWithImpl<LoadedCustomerSpotState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) init,
    required TResult Function(
            List<CustomerSpotWithQa> data,
            RealtionResturant resturant,
            bool isLoading,
            String? savingDirection)
        loaded,
  }) {
    return loaded(data, resturant, isLoading, savingDirection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? error)? init,
    TResult Function(List<CustomerSpotWithQa> data, RealtionResturant resturant,
            bool isLoading, String? savingDirection)?
        loaded,
  }) {
    return loaded?.call(data, resturant, isLoading, savingDirection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? init,
    TResult Function(List<CustomerSpotWithQa> data, RealtionResturant resturant,
            bool isLoading, String? savingDirection)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, resturant, isLoading, savingDirection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCustomerSpotState value) init,
    required TResult Function(LoadedCustomerSpotState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitCustomerSpotState value)? init,
    TResult Function(LoadedCustomerSpotState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCustomerSpotState value)? init,
    TResult Function(LoadedCustomerSpotState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCustomerSpotState implements CustomerSpotState {
  const factory LoadedCustomerSpotState(
      List<CustomerSpotWithQa> data,
      RealtionResturant resturant,
      bool isLoading,
      String? savingDirection) = _$LoadedCustomerSpotState;

  List<CustomerSpotWithQa> get data;
  RealtionResturant get resturant;
  bool get isLoading;
  String? get savingDirection;
  @JsonKey(ignore: true)
  $LoadedCustomerSpotStateCopyWith<LoadedCustomerSpotState> get copyWith =>
      throw _privateConstructorUsedError;
}
