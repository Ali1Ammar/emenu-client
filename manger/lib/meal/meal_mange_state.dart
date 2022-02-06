import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'meal_mange_state.freezed.dart';

@freezed
class MealMangeState with _$MealMangeState {
  const factory MealMangeState.init( [@Default(false) bool isError]) = InitMeals;
  const factory MealMangeState.loaded(
      {required List<Meal> meals,
      required List<Meal> searchedMeals,
      @Default(false) addNewMeal ,  @Default(false) bool isRefreshing }) = LodedMeals;
}

