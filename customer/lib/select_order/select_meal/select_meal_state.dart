

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part "select_meal_state.freezed.dart";

@freezed
class SubCategotyState with _$SubCategotyState {
  const factory SubCategotyState.loadingMeal() = MealLoading;
  const factory SubCategotyState.loaded(List<Meal> meals, bool isChecked) =
      MealLoaded;
}
