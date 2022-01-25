// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  LoadingHome loading() {
    return const LoadingHome();
  }

  LoadedAllResturant loadedSystemAdmin(List<Resturant> resturnats) {
    return LoadedAllResturant(
      resturnats,
    );
  }

  LoadedUserResturant loadedUserResturant(RealtionResturant resturnats) {
    return LoadedUserResturant(
      resturnats,
    );
  }

  EmptyUser emptyUser() {
    return const EmptyUser();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Resturant> resturnats) loadedSystemAdmin,
    required TResult Function(RealtionResturant resturnats) loadedUserResturant,
    required TResult Function() emptyUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Resturant> resturnats)? loadedSystemAdmin,
    TResult Function(RealtionResturant resturnats)? loadedUserResturant,
    TResult Function()? emptyUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Resturant> resturnats)? loadedSystemAdmin,
    TResult Function(RealtionResturant resturnats)? loadedUserResturant,
    TResult Function()? emptyUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHome value) loading,
    required TResult Function(LoadedAllResturant value) loadedSystemAdmin,
    required TResult Function(LoadedUserResturant value) loadedUserResturant,
    required TResult Function(EmptyUser value) emptyUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedAllResturant value)? loadedSystemAdmin,
    TResult Function(LoadedUserResturant value)? loadedUserResturant,
    TResult Function(EmptyUser value)? emptyUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedAllResturant value)? loadedSystemAdmin,
    TResult Function(LoadedUserResturant value)? loadedUserResturant,
    TResult Function(EmptyUser value)? emptyUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $LoadingHomeCopyWith<$Res> {
  factory $LoadingHomeCopyWith(
          LoadingHome value, $Res Function(LoadingHome) then) =
      _$LoadingHomeCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingHomeCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadingHomeCopyWith<$Res> {
  _$LoadingHomeCopyWithImpl(
      LoadingHome _value, $Res Function(LoadingHome) _then)
      : super(_value, (v) => _then(v as LoadingHome));

  @override
  LoadingHome get _value => super._value as LoadingHome;
}

/// @nodoc

class _$LoadingHome implements LoadingHome {
  const _$LoadingHome();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Resturant> resturnats) loadedSystemAdmin,
    required TResult Function(RealtionResturant resturnats) loadedUserResturant,
    required TResult Function() emptyUser,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Resturant> resturnats)? loadedSystemAdmin,
    TResult Function(RealtionResturant resturnats)? loadedUserResturant,
    TResult Function()? emptyUser,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Resturant> resturnats)? loadedSystemAdmin,
    TResult Function(RealtionResturant resturnats)? loadedUserResturant,
    TResult Function()? emptyUser,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHome value) loading,
    required TResult Function(LoadedAllResturant value) loadedSystemAdmin,
    required TResult Function(LoadedUserResturant value) loadedUserResturant,
    required TResult Function(EmptyUser value) emptyUser,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedAllResturant value)? loadedSystemAdmin,
    TResult Function(LoadedUserResturant value)? loadedUserResturant,
    TResult Function(EmptyUser value)? emptyUser,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedAllResturant value)? loadedSystemAdmin,
    TResult Function(LoadedUserResturant value)? loadedUserResturant,
    TResult Function(EmptyUser value)? emptyUser,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingHome implements HomeState {
  const factory LoadingHome() = _$LoadingHome;
}

/// @nodoc
abstract class $LoadedAllResturantCopyWith<$Res> {
  factory $LoadedAllResturantCopyWith(
          LoadedAllResturant value, $Res Function(LoadedAllResturant) then) =
      _$LoadedAllResturantCopyWithImpl<$Res>;
  $Res call({List<Resturant> resturnats});
}

/// @nodoc
class _$LoadedAllResturantCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadedAllResturantCopyWith<$Res> {
  _$LoadedAllResturantCopyWithImpl(
      LoadedAllResturant _value, $Res Function(LoadedAllResturant) _then)
      : super(_value, (v) => _then(v as LoadedAllResturant));

  @override
  LoadedAllResturant get _value => super._value as LoadedAllResturant;

  @override
  $Res call({
    Object? resturnats = freezed,
  }) {
    return _then(LoadedAllResturant(
      resturnats == freezed
          ? _value.resturnats
          : resturnats // ignore: cast_nullable_to_non_nullable
              as List<Resturant>,
    ));
  }
}

/// @nodoc

class _$LoadedAllResturant implements LoadedAllResturant {
  const _$LoadedAllResturant(this.resturnats);

  @override
  final List<Resturant> resturnats;

  @override
  String toString() {
    return 'HomeState.loadedSystemAdmin(resturnats: $resturnats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedAllResturant &&
            const DeepCollectionEquality()
                .equals(other.resturnats, resturnats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(resturnats));

  @JsonKey(ignore: true)
  @override
  $LoadedAllResturantCopyWith<LoadedAllResturant> get copyWith =>
      _$LoadedAllResturantCopyWithImpl<LoadedAllResturant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Resturant> resturnats) loadedSystemAdmin,
    required TResult Function(RealtionResturant resturnats) loadedUserResturant,
    required TResult Function() emptyUser,
  }) {
    return loadedSystemAdmin(resturnats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Resturant> resturnats)? loadedSystemAdmin,
    TResult Function(RealtionResturant resturnats)? loadedUserResturant,
    TResult Function()? emptyUser,
  }) {
    return loadedSystemAdmin?.call(resturnats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Resturant> resturnats)? loadedSystemAdmin,
    TResult Function(RealtionResturant resturnats)? loadedUserResturant,
    TResult Function()? emptyUser,
    required TResult orElse(),
  }) {
    if (loadedSystemAdmin != null) {
      return loadedSystemAdmin(resturnats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHome value) loading,
    required TResult Function(LoadedAllResturant value) loadedSystemAdmin,
    required TResult Function(LoadedUserResturant value) loadedUserResturant,
    required TResult Function(EmptyUser value) emptyUser,
  }) {
    return loadedSystemAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedAllResturant value)? loadedSystemAdmin,
    TResult Function(LoadedUserResturant value)? loadedUserResturant,
    TResult Function(EmptyUser value)? emptyUser,
  }) {
    return loadedSystemAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedAllResturant value)? loadedSystemAdmin,
    TResult Function(LoadedUserResturant value)? loadedUserResturant,
    TResult Function(EmptyUser value)? emptyUser,
    required TResult orElse(),
  }) {
    if (loadedSystemAdmin != null) {
      return loadedSystemAdmin(this);
    }
    return orElse();
  }
}

abstract class LoadedAllResturant implements HomeState {
  const factory LoadedAllResturant(List<Resturant> resturnats) =
      _$LoadedAllResturant;

  List<Resturant> get resturnats;
  @JsonKey(ignore: true)
  $LoadedAllResturantCopyWith<LoadedAllResturant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedUserResturantCopyWith<$Res> {
  factory $LoadedUserResturantCopyWith(
          LoadedUserResturant value, $Res Function(LoadedUserResturant) then) =
      _$LoadedUserResturantCopyWithImpl<$Res>;
  $Res call({RealtionResturant resturnats});
}

/// @nodoc
class _$LoadedUserResturantCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadedUserResturantCopyWith<$Res> {
  _$LoadedUserResturantCopyWithImpl(
      LoadedUserResturant _value, $Res Function(LoadedUserResturant) _then)
      : super(_value, (v) => _then(v as LoadedUserResturant));

  @override
  LoadedUserResturant get _value => super._value as LoadedUserResturant;

  @override
  $Res call({
    Object? resturnats = freezed,
  }) {
    return _then(LoadedUserResturant(
      resturnats == freezed
          ? _value.resturnats
          : resturnats // ignore: cast_nullable_to_non_nullable
              as RealtionResturant,
    ));
  }
}

/// @nodoc

class _$LoadedUserResturant implements LoadedUserResturant {
  const _$LoadedUserResturant(this.resturnats);

  @override
  final RealtionResturant resturnats;

  @override
  String toString() {
    return 'HomeState.loadedUserResturant(resturnats: $resturnats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedUserResturant &&
            const DeepCollectionEquality()
                .equals(other.resturnats, resturnats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(resturnats));

  @JsonKey(ignore: true)
  @override
  $LoadedUserResturantCopyWith<LoadedUserResturant> get copyWith =>
      _$LoadedUserResturantCopyWithImpl<LoadedUserResturant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Resturant> resturnats) loadedSystemAdmin,
    required TResult Function(RealtionResturant resturnats) loadedUserResturant,
    required TResult Function() emptyUser,
  }) {
    return loadedUserResturant(resturnats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Resturant> resturnats)? loadedSystemAdmin,
    TResult Function(RealtionResturant resturnats)? loadedUserResturant,
    TResult Function()? emptyUser,
  }) {
    return loadedUserResturant?.call(resturnats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Resturant> resturnats)? loadedSystemAdmin,
    TResult Function(RealtionResturant resturnats)? loadedUserResturant,
    TResult Function()? emptyUser,
    required TResult orElse(),
  }) {
    if (loadedUserResturant != null) {
      return loadedUserResturant(resturnats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHome value) loading,
    required TResult Function(LoadedAllResturant value) loadedSystemAdmin,
    required TResult Function(LoadedUserResturant value) loadedUserResturant,
    required TResult Function(EmptyUser value) emptyUser,
  }) {
    return loadedUserResturant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedAllResturant value)? loadedSystemAdmin,
    TResult Function(LoadedUserResturant value)? loadedUserResturant,
    TResult Function(EmptyUser value)? emptyUser,
  }) {
    return loadedUserResturant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedAllResturant value)? loadedSystemAdmin,
    TResult Function(LoadedUserResturant value)? loadedUserResturant,
    TResult Function(EmptyUser value)? emptyUser,
    required TResult orElse(),
  }) {
    if (loadedUserResturant != null) {
      return loadedUserResturant(this);
    }
    return orElse();
  }
}

abstract class LoadedUserResturant implements HomeState {
  const factory LoadedUserResturant(RealtionResturant resturnats) =
      _$LoadedUserResturant;

  RealtionResturant get resturnats;
  @JsonKey(ignore: true)
  $LoadedUserResturantCopyWith<LoadedUserResturant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyUserCopyWith<$Res> {
  factory $EmptyUserCopyWith(EmptyUser value, $Res Function(EmptyUser) then) =
      _$EmptyUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyUserCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $EmptyUserCopyWith<$Res> {
  _$EmptyUserCopyWithImpl(EmptyUser _value, $Res Function(EmptyUser) _then)
      : super(_value, (v) => _then(v as EmptyUser));

  @override
  EmptyUser get _value => super._value as EmptyUser;
}

/// @nodoc

class _$EmptyUser implements EmptyUser {
  const _$EmptyUser();

  @override
  String toString() {
    return 'HomeState.emptyUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptyUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Resturant> resturnats) loadedSystemAdmin,
    required TResult Function(RealtionResturant resturnats) loadedUserResturant,
    required TResult Function() emptyUser,
  }) {
    return emptyUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Resturant> resturnats)? loadedSystemAdmin,
    TResult Function(RealtionResturant resturnats)? loadedUserResturant,
    TResult Function()? emptyUser,
  }) {
    return emptyUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Resturant> resturnats)? loadedSystemAdmin,
    TResult Function(RealtionResturant resturnats)? loadedUserResturant,
    TResult Function()? emptyUser,
    required TResult orElse(),
  }) {
    if (emptyUser != null) {
      return emptyUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHome value) loading,
    required TResult Function(LoadedAllResturant value) loadedSystemAdmin,
    required TResult Function(LoadedUserResturant value) loadedUserResturant,
    required TResult Function(EmptyUser value) emptyUser,
  }) {
    return emptyUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedAllResturant value)? loadedSystemAdmin,
    TResult Function(LoadedUserResturant value)? loadedUserResturant,
    TResult Function(EmptyUser value)? emptyUser,
  }) {
    return emptyUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedAllResturant value)? loadedSystemAdmin,
    TResult Function(LoadedUserResturant value)? loadedUserResturant,
    TResult Function(EmptyUser value)? emptyUser,
    required TResult orElse(),
  }) {
    if (emptyUser != null) {
      return emptyUser(this);
    }
    return orElse();
  }
}

abstract class EmptyUser implements HomeState {
  const factory EmptyUser() = _$EmptyUser;
}
