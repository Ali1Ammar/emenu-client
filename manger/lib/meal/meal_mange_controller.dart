import 'package:manger/meal/meal_mange_state.dart';
import 'package:manger/new_rest/meal/new_meal_value.dart';
import 'package:manger/shared/dialog.dart';
import 'package:manger/shared/logger.dart';
import 'package:manger/shared/service/add_to_rest_service.dart';
import 'package:manger/shared/service/resturnat_service.dart';
import 'package:riverpod/riverpod.dart';

final mealMangerControllerProvider =
    StateNotifierProvider.autoDispose<MealMangeController, MealMangeState>(
        (_) => MealMangeController(_.read, _.watch(resturantServiceProvider)));

class MealMangeController extends StateController<MealMangeState> {
  final ResturantService resturantService;
  final Reader read;
  MealMangeController(this.read, this.resturantService)
      : super(const MealMangeState.init()) {
    init();
  }

  init() async {
    try {
      final meals = await resturantService.getLinkedResturantMeal();
      state = MealMangeState.loaded(
        meals: meals,
        searchedMeals: meals,
      );
    } catch (e, s) {
      debugLog(e, s);
      showErrorDialogViaRead(e, read);
    }
  }

  setAddMeal(bool value) {
    state = state.map(
        init: (_) => _,
        loaded: (_) => _.copyWith(addNewMeal: value, isRefreshing: false));
  }

  addMeal(NewMealValue value) async {
    try {
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(
                isRefreshing: true,
              ));

      final future = await read(addResturantServiceProvider).addMeal(value);
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(
              meals: _.meals..add(future),
              searchedMeals: _.searchedMeals..add(future)));
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(isRefreshing: false, addNewMeal: false));
    } catch (e, s) {
      debugLog(e, s);
      showErrorDialogViaRead(e, read);
      state = state.map(
          init: (_) => _, loaded: (_) => _.copyWith(isRefreshing: false));
    }
  }
}
