import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manger/login/user.dart';
import 'package:shared/shared.dart';

part "category_mange_state.freezed.dart";

@freezed
class CategoryMangeState with _$CategoryMangeState {
  const factory CategoryMangeState.init( [@Default(false) bool isError]) = InitCategorys;
  const factory CategoryMangeState.loaded(
      {required List<MainCategory> categorys,
      @Default(null) OldEditCategoryDto? oldEdited,
      @Default(false) bool editMode ,  @Default(false) bool isRefreshing }) = LodedCategorys;
}



class OldEditCategoryDto {
  final User old;
  final int index;
  OldEditCategoryDto(this.old,this.index);
}