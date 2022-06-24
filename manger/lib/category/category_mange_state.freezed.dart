// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_mange_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryMangeStateTearOff {
  const _$CategoryMangeStateTearOff();

  InitCategorys init([bool isError = false]) {
    return InitCategorys(
      isError,
    );
  }

  LodedCategorys loaded(
      {required List<MainCategory> categorys,
      OldEditCategoryDto? oldEdited = null,
      bool editMode = false,
      bool isRefreshing = false}) {
    return LodedCategorys(
      categorys: categorys,
      oldEdited: oldEdited,
      editMode: editMode,
      isRefreshing: isRefreshing,
    );
  }
}

/// @nodoc
const $CategoryMangeState = _$CategoryMangeStateTearOff();

/// @nodoc
mixin _$CategoryMangeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<MainCategory> categorys,
            OldEditCategoryDto? oldEdited, bool editMode, bool isRefreshing)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<MainCategory> categorys,
            OldEditCategoryDto? oldEdited, bool editMode, bool isRefreshing)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<MainCategory> categorys,
            OldEditCategoryDto? oldEdited, bool editMode, bool isRefreshing)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCategorys value) init,
    required TResult Function(LodedCategorys value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitCategorys value)? init,
    TResult Function(LodedCategorys value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCategorys value)? init,
    TResult Function(LodedCategorys value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryMangeStateCopyWith<$Res> {
  factory $CategoryMangeStateCopyWith(
          CategoryMangeState value, $Res Function(CategoryMangeState) then) =
      _$CategoryMangeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryMangeStateCopyWithImpl<$Res>
    implements $CategoryMangeStateCopyWith<$Res> {
  _$CategoryMangeStateCopyWithImpl(this._value, this._then);

  final CategoryMangeState _value;
  // ignore: unused_field
  final $Res Function(CategoryMangeState) _then;
}

/// @nodoc
abstract class $InitCategorysCopyWith<$Res> {
  factory $InitCategorysCopyWith(
          InitCategorys value, $Res Function(InitCategorys) then) =
      _$InitCategorysCopyWithImpl<$Res>;
  $Res call({bool isError});
}

/// @nodoc
class _$InitCategorysCopyWithImpl<$Res>
    extends _$CategoryMangeStateCopyWithImpl<$Res>
    implements $InitCategorysCopyWith<$Res> {
  _$InitCategorysCopyWithImpl(
      InitCategorys _value, $Res Function(InitCategorys) _then)
      : super(_value, (v) => _then(v as InitCategorys));

  @override
  InitCategorys get _value => super._value as InitCategorys;

  @override
  $Res call({
    Object? isError = freezed,
  }) {
    return _then(InitCategorys(
      isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitCategorys implements InitCategorys {
  const _$InitCategorys([this.isError = false]);

  @JsonKey()
  @override
  final bool isError;

  @override
  String toString() {
    return 'CategoryMangeState.init(isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitCategorys &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  $InitCategorysCopyWith<InitCategorys> get copyWith =>
      _$InitCategorysCopyWithImpl<InitCategorys>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<MainCategory> categorys,
            OldEditCategoryDto? oldEdited, bool editMode, bool isRefreshing)
        loaded,
  }) {
    return init(isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<MainCategory> categorys,
            OldEditCategoryDto? oldEdited, bool editMode, bool isRefreshing)?
        loaded,
  }) {
    return init?.call(isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<MainCategory> categorys,
            OldEditCategoryDto? oldEdited, bool editMode, bool isRefreshing)?
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
    required TResult Function(InitCategorys value) init,
    required TResult Function(LodedCategorys value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitCategorys value)? init,
    TResult Function(LodedCategorys value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCategorys value)? init,
    TResult Function(LodedCategorys value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitCategorys implements CategoryMangeState {
  const factory InitCategorys([bool isError]) = _$InitCategorys;

  bool get isError;
  @JsonKey(ignore: true)
  $InitCategorysCopyWith<InitCategorys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LodedCategorysCopyWith<$Res> {
  factory $LodedCategorysCopyWith(
          LodedCategorys value, $Res Function(LodedCategorys) then) =
      _$LodedCategorysCopyWithImpl<$Res>;
  $Res call(
      {List<MainCategory> categorys,
      OldEditCategoryDto? oldEdited,
      bool editMode,
      bool isRefreshing});
}

/// @nodoc
class _$LodedCategorysCopyWithImpl<$Res>
    extends _$CategoryMangeStateCopyWithImpl<$Res>
    implements $LodedCategorysCopyWith<$Res> {
  _$LodedCategorysCopyWithImpl(
      LodedCategorys _value, $Res Function(LodedCategorys) _then)
      : super(_value, (v) => _then(v as LodedCategorys));

  @override
  LodedCategorys get _value => super._value as LodedCategorys;

  @override
  $Res call({
    Object? categorys = freezed,
    Object? oldEdited = freezed,
    Object? editMode = freezed,
    Object? isRefreshing = freezed,
  }) {
    return _then(LodedCategorys(
      categorys: categorys == freezed
          ? _value.categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<MainCategory>,
      oldEdited: oldEdited == freezed
          ? _value.oldEdited
          : oldEdited // ignore: cast_nullable_to_non_nullable
              as OldEditCategoryDto?,
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

class _$LodedCategorys implements LodedCategorys {
  const _$LodedCategorys(
      {required this.categorys,
      this.oldEdited = null,
      this.editMode = false,
      this.isRefreshing = false});

  @override
  final List<MainCategory> categorys;
  @JsonKey()
  @override
  final OldEditCategoryDto? oldEdited;
  @JsonKey()
  @override
  final bool editMode;
  @JsonKey()
  @override
  final bool isRefreshing;

  @override
  String toString() {
    return 'CategoryMangeState.loaded(categorys: $categorys, oldEdited: $oldEdited, editMode: $editMode, isRefreshing: $isRefreshing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LodedCategorys &&
            const DeepCollectionEquality().equals(other.categorys, categorys) &&
            const DeepCollectionEquality().equals(other.oldEdited, oldEdited) &&
            const DeepCollectionEquality().equals(other.editMode, editMode) &&
            const DeepCollectionEquality()
                .equals(other.isRefreshing, isRefreshing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categorys),
      const DeepCollectionEquality().hash(oldEdited),
      const DeepCollectionEquality().hash(editMode),
      const DeepCollectionEquality().hash(isRefreshing));

  @JsonKey(ignore: true)
  @override
  $LodedCategorysCopyWith<LodedCategorys> get copyWith =>
      _$LodedCategorysCopyWithImpl<LodedCategorys>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isError) init,
    required TResult Function(List<MainCategory> categorys,
            OldEditCategoryDto? oldEdited, bool editMode, bool isRefreshing)
        loaded,
  }) {
    return loaded(categorys, oldEdited, editMode, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<MainCategory> categorys,
            OldEditCategoryDto? oldEdited, bool editMode, bool isRefreshing)?
        loaded,
  }) {
    return loaded?.call(categorys, oldEdited, editMode, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isError)? init,
    TResult Function(List<MainCategory> categorys,
            OldEditCategoryDto? oldEdited, bool editMode, bool isRefreshing)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categorys, oldEdited, editMode, isRefreshing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCategorys value) init,
    required TResult Function(LodedCategorys value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitCategorys value)? init,
    TResult Function(LodedCategorys value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCategorys value)? init,
    TResult Function(LodedCategorys value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LodedCategorys implements CategoryMangeState {
  const factory LodedCategorys(
      {required List<MainCategory> categorys,
      OldEditCategoryDto? oldEdited,
      bool editMode,
      bool isRefreshing}) = _$LodedCategorys;

  List<MainCategory> get categorys;
  OldEditCategoryDto? get oldEdited;
  bool get editMode;
  bool get isRefreshing;
  @JsonKey(ignore: true)
  $LodedCategorysCopyWith<LodedCategorys> get copyWith =>
      throw _privateConstructorUsedError;
}
