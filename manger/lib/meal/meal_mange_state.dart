import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'meal_mange_state.freezed.dart';

@freezed
class MealMangeState with _$MealMangeState {
  const factory MealMangeState.init( [@Default(false) bool isError]) = InitMeals;
  const factory MealMangeState.loaded(
      {required List<Meal> meals,
      required List<Meal> searchedMeals,
      @Default(null) OldEditMealDto? oldEdited,
      @Default(false) bool editMode ,  @Default(false) bool isRefreshing }) = LodedMeals;
}



class OldEditMealDto {
  final Kitchen kitchen;
  final SubCategory subCategory;
  final MainCategory mainCategory;
  final Meal old;
  final int index;
  OldEditMealDto(this.kitchen, this.subCategory, this.mainCategory, this.old,this.index);
}