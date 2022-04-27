// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'select_resturant_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectResturantStateTearOff {
  const _$SelectResturantStateTearOff();

  ErrorInit error(String error) {
    return ErrorInit(
      error,
    );
  }

  LoadingInit loadingInit() {
    return const LoadingInit();
  }

  LoadResturants loadResturants(List<Resturant> resturnats,
      Fuzzy<Resturant>? fuzzySearch, List<Resturant> resturnatSearch) {
    return LoadResturants(
      resturnats,
      fuzzySearch,
      resturnatSearch,
    );
  }

  LoadingOrder loadingOrderType(Resturant resturant) {
    return LoadingOrder(
      resturant,
    );
  }

  LoadSelectedResturant loadSelectedResturant(
      RealtionResturantCustomer resturant) {
    return LoadSelectedResturant(
      resturant,
    );
  }
}

/// @nodoc
const $SelectResturantState = _$SelectResturantStateTearOff();

/// @nodoc
mixin _$SelectResturantState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() loadingInit,
    required TResult Function(List<Resturant> resturnats,
            Fuzzy<Resturant>? fuzzySearch, List<Resturant> resturnatSearch)
        loadResturants,
    required TResult Function(Resturant resturant) loadingOrderType,
    required TResult Function(RealtionResturantCustomer resturant)
        loadSelectedResturant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorInit value) error,
    required TResult Function(LoadingInit value) loadingInit,
    required TResult Function(LoadResturants value) loadResturants,
    required TResult Function(LoadingOrder value) loadingOrderType,
    required TResult Function(LoadSelectedResturant value)
        loadSelectedResturant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectResturantStateCopyWith<$Res> {
  factory $SelectResturantStateCopyWith(SelectResturantState value,
          $Res Function(SelectResturantState) then) =
      _$SelectResturantStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectResturantStateCopyWithImpl<$Res>
    implements $SelectResturantStateCopyWith<$Res> {
  _$SelectResturantStateCopyWithImpl(this._value, this._then);

  final SelectResturantState _value;
  // ignore: unused_field
  final $Res Function(SelectResturantState) _then;
}

/// @nodoc
abstract class $ErrorInitCopyWith<$Res> {
  factory $ErrorInitCopyWith(ErrorInit value, $Res Function(ErrorInit) then) =
      _$ErrorInitCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ErrorInitCopyWithImpl<$Res>
    extends _$SelectResturantStateCopyWithImpl<$Res>
    implements $ErrorInitCopyWith<$Res> {
  _$ErrorInitCopyWithImpl(ErrorInit _value, $Res Function(ErrorInit) _then)
      : super(_value, (v) => _then(v as ErrorInit));

  @override
  ErrorInit get _value => super._value as ErrorInit;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ErrorInit(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorInit implements ErrorInit {
  const _$ErrorInit(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SelectResturantState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorInit &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ErrorInitCopyWith<ErrorInit> get copyWith =>
      _$ErrorInitCopyWithImpl<ErrorInit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() loadingInit,
    required TResult Function(List<Resturant> resturnats,
            Fuzzy<Resturant>? fuzzySearch, List<Resturant> resturnatSearch)
        loadResturants,
    required TResult Function(Resturant resturant) loadingOrderType,
    required TResult Function(RealtionResturantCustomer resturant)
        loadSelectedResturant,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorInit value) error,
    required TResult Function(LoadingInit value) loadingInit,
    required TResult Function(LoadResturants value) loadResturants,
    required TResult Function(LoadingOrder value) loadingOrderType,
    required TResult Function(LoadSelectedResturant value)
        loadSelectedResturant,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorInit implements SelectResturantState {
  const factory ErrorInit(String error) = _$ErrorInit;

  String get error;
  @JsonKey(ignore: true)
  $ErrorInitCopyWith<ErrorInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingInitCopyWith<$Res> {
  factory $LoadingInitCopyWith(
          LoadingInit value, $Res Function(LoadingInit) then) =
      _$LoadingInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingInitCopyWithImpl<$Res>
    extends _$SelectResturantStateCopyWithImpl<$Res>
    implements $LoadingInitCopyWith<$Res> {
  _$LoadingInitCopyWithImpl(
      LoadingInit _value, $Res Function(LoadingInit) _then)
      : super(_value, (v) => _then(v as LoadingInit));

  @override
  LoadingInit get _value => super._value as LoadingInit;
}

/// @nodoc

class _$LoadingInit implements LoadingInit {
  const _$LoadingInit();

  @override
  String toString() {
    return 'SelectResturantState.loadingInit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() loadingInit,
    required TResult Function(List<Resturant> resturnats,
            Fuzzy<Resturant>? fuzzySearch, List<Resturant> resturnatSearch)
        loadResturants,
    required TResult Function(Resturant resturant) loadingOrderType,
    required TResult Function(RealtionResturantCustomer resturant)
        loadSelectedResturant,
  }) {
    return loadingInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
  }) {
    return loadingInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
    required TResult orElse(),
  }) {
    if (loadingInit != null) {
      return loadingInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorInit value) error,
    required TResult Function(LoadingInit value) loadingInit,
    required TResult Function(LoadResturants value) loadResturants,
    required TResult Function(LoadingOrder value) loadingOrderType,
    required TResult Function(LoadSelectedResturant value)
        loadSelectedResturant,
  }) {
    return loadingInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
  }) {
    return loadingInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
    required TResult orElse(),
  }) {
    if (loadingInit != null) {
      return loadingInit(this);
    }
    return orElse();
  }
}

abstract class LoadingInit implements SelectResturantState {
  const factory LoadingInit() = _$LoadingInit;
}

/// @nodoc
abstract class $LoadResturantsCopyWith<$Res> {
  factory $LoadResturantsCopyWith(
          LoadResturants value, $Res Function(LoadResturants) then) =
      _$LoadResturantsCopyWithImpl<$Res>;
  $Res call(
      {List<Resturant> resturnats,
      Fuzzy<Resturant>? fuzzySearch,
      List<Resturant> resturnatSearch});
}

/// @nodoc
class _$LoadResturantsCopyWithImpl<$Res>
    extends _$SelectResturantStateCopyWithImpl<$Res>
    implements $LoadResturantsCopyWith<$Res> {
  _$LoadResturantsCopyWithImpl(
      LoadResturants _value, $Res Function(LoadResturants) _then)
      : super(_value, (v) => _then(v as LoadResturants));

  @override
  LoadResturants get _value => super._value as LoadResturants;

  @override
  $Res call({
    Object? resturnats = freezed,
    Object? fuzzySearch = freezed,
    Object? resturnatSearch = freezed,
  }) {
    return _then(LoadResturants(
      resturnats == freezed
          ? _value.resturnats
          : resturnats // ignore: cast_nullable_to_non_nullable
              as List<Resturant>,
      fuzzySearch == freezed
          ? _value.fuzzySearch
          : fuzzySearch // ignore: cast_nullable_to_non_nullable
              as Fuzzy<Resturant>?,
      resturnatSearch == freezed
          ? _value.resturnatSearch
          : resturnatSearch // ignore: cast_nullable_to_non_nullable
              as List<Resturant>,
    ));
  }
}

/// @nodoc

class _$LoadResturants implements LoadResturants {
  const _$LoadResturants(
      this.resturnats, this.fuzzySearch, this.resturnatSearch);

  @override
  final List<Resturant> resturnats;
  @override
  final Fuzzy<Resturant>? fuzzySearch;
  @override
  final List<Resturant> resturnatSearch;

  @override
  String toString() {
    return 'SelectResturantState.loadResturants(resturnats: $resturnats, fuzzySearch: $fuzzySearch, resturnatSearch: $resturnatSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadResturants &&
            const DeepCollectionEquality()
                .equals(other.resturnats, resturnats) &&
            const DeepCollectionEquality()
                .equals(other.fuzzySearch, fuzzySearch) &&
            const DeepCollectionEquality()
                .equals(other.resturnatSearch, resturnatSearch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resturnats),
      const DeepCollectionEquality().hash(fuzzySearch),
      const DeepCollectionEquality().hash(resturnatSearch));

  @JsonKey(ignore: true)
  @override
  $LoadResturantsCopyWith<LoadResturants> get copyWith =>
      _$LoadResturantsCopyWithImpl<LoadResturants>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() loadingInit,
    required TResult Function(List<Resturant> resturnats,
            Fuzzy<Resturant>? fuzzySearch, List<Resturant> resturnatSearch)
        loadResturants,
    required TResult Function(Resturant resturant) loadingOrderType,
    required TResult Function(RealtionResturantCustomer resturant)
        loadSelectedResturant,
  }) {
    return loadResturants(resturnats, fuzzySearch, resturnatSearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
  }) {
    return loadResturants?.call(resturnats, fuzzySearch, resturnatSearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
    required TResult orElse(),
  }) {
    if (loadResturants != null) {
      return loadResturants(resturnats, fuzzySearch, resturnatSearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorInit value) error,
    required TResult Function(LoadingInit value) loadingInit,
    required TResult Function(LoadResturants value) loadResturants,
    required TResult Function(LoadingOrder value) loadingOrderType,
    required TResult Function(LoadSelectedResturant value)
        loadSelectedResturant,
  }) {
    return loadResturants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
  }) {
    return loadResturants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
    required TResult orElse(),
  }) {
    if (loadResturants != null) {
      return loadResturants(this);
    }
    return orElse();
  }
}

abstract class LoadResturants implements SelectResturantState {
  const factory LoadResturants(
      List<Resturant> resturnats,
      Fuzzy<Resturant>? fuzzySearch,
      List<Resturant> resturnatSearch) = _$LoadResturants;

  List<Resturant> get resturnats;
  Fuzzy<Resturant>? get fuzzySearch;
  List<Resturant> get resturnatSearch;
  @JsonKey(ignore: true)
  $LoadResturantsCopyWith<LoadResturants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingOrderCopyWith<$Res> {
  factory $LoadingOrderCopyWith(
          LoadingOrder value, $Res Function(LoadingOrder) then) =
      _$LoadingOrderCopyWithImpl<$Res>;
  $Res call({Resturant resturant});
}

/// @nodoc
class _$LoadingOrderCopyWithImpl<$Res>
    extends _$SelectResturantStateCopyWithImpl<$Res>
    implements $LoadingOrderCopyWith<$Res> {
  _$LoadingOrderCopyWithImpl(
      LoadingOrder _value, $Res Function(LoadingOrder) _then)
      : super(_value, (v) => _then(v as LoadingOrder));

  @override
  LoadingOrder get _value => super._value as LoadingOrder;

  @override
  $Res call({
    Object? resturant = freezed,
  }) {
    return _then(LoadingOrder(
      resturant == freezed
          ? _value.resturant
          : resturant // ignore: cast_nullable_to_non_nullable
              as Resturant,
    ));
  }
}

/// @nodoc

class _$LoadingOrder implements LoadingOrder {
  const _$LoadingOrder(this.resturant);

  @override
  final Resturant resturant;

  @override
  String toString() {
    return 'SelectResturantState.loadingOrderType(resturant: $resturant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingOrder &&
            const DeepCollectionEquality().equals(other.resturant, resturant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(resturant));

  @JsonKey(ignore: true)
  @override
  $LoadingOrderCopyWith<LoadingOrder> get copyWith =>
      _$LoadingOrderCopyWithImpl<LoadingOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() loadingInit,
    required TResult Function(List<Resturant> resturnats,
            Fuzzy<Resturant>? fuzzySearch, List<Resturant> resturnatSearch)
        loadResturants,
    required TResult Function(Resturant resturant) loadingOrderType,
    required TResult Function(RealtionResturantCustomer resturant)
        loadSelectedResturant,
  }) {
    return loadingOrderType(resturant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
  }) {
    return loadingOrderType?.call(resturant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
    required TResult orElse(),
  }) {
    if (loadingOrderType != null) {
      return loadingOrderType(resturant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorInit value) error,
    required TResult Function(LoadingInit value) loadingInit,
    required TResult Function(LoadResturants value) loadResturants,
    required TResult Function(LoadingOrder value) loadingOrderType,
    required TResult Function(LoadSelectedResturant value)
        loadSelectedResturant,
  }) {
    return loadingOrderType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
  }) {
    return loadingOrderType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
    required TResult orElse(),
  }) {
    if (loadingOrderType != null) {
      return loadingOrderType(this);
    }
    return orElse();
  }
}

abstract class LoadingOrder implements SelectResturantState {
  const factory LoadingOrder(Resturant resturant) = _$LoadingOrder;

  Resturant get resturant;
  @JsonKey(ignore: true)
  $LoadingOrderCopyWith<LoadingOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadSelectedResturantCopyWith<$Res> {
  factory $LoadSelectedResturantCopyWith(LoadSelectedResturant value,
          $Res Function(LoadSelectedResturant) then) =
      _$LoadSelectedResturantCopyWithImpl<$Res>;
  $Res call({RealtionResturantCustomer resturant});
}

/// @nodoc
class _$LoadSelectedResturantCopyWithImpl<$Res>
    extends _$SelectResturantStateCopyWithImpl<$Res>
    implements $LoadSelectedResturantCopyWith<$Res> {
  _$LoadSelectedResturantCopyWithImpl(
      LoadSelectedResturant _value, $Res Function(LoadSelectedResturant) _then)
      : super(_value, (v) => _then(v as LoadSelectedResturant));

  @override
  LoadSelectedResturant get _value => super._value as LoadSelectedResturant;

  @override
  $Res call({
    Object? resturant = freezed,
  }) {
    return _then(LoadSelectedResturant(
      resturant == freezed
          ? _value.resturant
          : resturant // ignore: cast_nullable_to_non_nullable
              as RealtionResturantCustomer,
    ));
  }
}

/// @nodoc

class _$LoadSelectedResturant implements LoadSelectedResturant {
  const _$LoadSelectedResturant(this.resturant);

  @override
  final RealtionResturantCustomer resturant;

  @override
  String toString() {
    return 'SelectResturantState.loadSelectedResturant(resturant: $resturant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadSelectedResturant &&
            const DeepCollectionEquality().equals(other.resturant, resturant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(resturant));

  @JsonKey(ignore: true)
  @override
  $LoadSelectedResturantCopyWith<LoadSelectedResturant> get copyWith =>
      _$LoadSelectedResturantCopyWithImpl<LoadSelectedResturant>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() loadingInit,
    required TResult Function(List<Resturant> resturnats,
            Fuzzy<Resturant>? fuzzySearch, List<Resturant> resturnatSearch)
        loadResturants,
    required TResult Function(Resturant resturant) loadingOrderType,
    required TResult Function(RealtionResturantCustomer resturant)
        loadSelectedResturant,
  }) {
    return loadSelectedResturant(resturant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
  }) {
    return loadSelectedResturant?.call(resturant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? loadingInit,
    TResult Function(List<Resturant> resturnats, Fuzzy<Resturant>? fuzzySearch,
            List<Resturant> resturnatSearch)?
        loadResturants,
    TResult Function(Resturant resturant)? loadingOrderType,
    TResult Function(RealtionResturantCustomer resturant)?
        loadSelectedResturant,
    required TResult orElse(),
  }) {
    if (loadSelectedResturant != null) {
      return loadSelectedResturant(resturant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorInit value) error,
    required TResult Function(LoadingInit value) loadingInit,
    required TResult Function(LoadResturants value) loadResturants,
    required TResult Function(LoadingOrder value) loadingOrderType,
    required TResult Function(LoadSelectedResturant value)
        loadSelectedResturant,
  }) {
    return loadSelectedResturant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
  }) {
    return loadSelectedResturant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInit value)? error,
    TResult Function(LoadingInit value)? loadingInit,
    TResult Function(LoadResturants value)? loadResturants,
    TResult Function(LoadingOrder value)? loadingOrderType,
    TResult Function(LoadSelectedResturant value)? loadSelectedResturant,
    required TResult orElse(),
  }) {
    if (loadSelectedResturant != null) {
      return loadSelectedResturant(this);
    }
    return orElse();
  }
}

abstract class LoadSelectedResturant implements SelectResturantState {
  const factory LoadSelectedResturant(RealtionResturantCustomer resturant) =
      _$LoadSelectedResturant;

  RealtionResturantCustomer get resturant;
  @JsonKey(ignore: true)
  $LoadSelectedResturantCopyWith<LoadSelectedResturant> get copyWith =>
      throw _privateConstructorUsedError;
}
