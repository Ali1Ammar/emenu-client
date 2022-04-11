import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/meal/meal_mange_state.dart';
import 'package:manger/new_rest/meal/new_meal_value.dart';
import 'package:manger/shared/dialog.dart';
import 'package:manger/shared/service/add_to_rest_service.dart';
import 'package:manger/shared/service/resturnat_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

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
        searchedMeals: [],
      );
    } catch (e, s) {
      debugLog(e, s);
      showErrorDialogViaRead(e, read);
    }
  }

  setEditMode(bool value, int? oldIndex) {
    state = state.map(
        init: (_) => _,
        loaded: (_) => _.copyWith(
            editMode: value,
            oldEdited: oldIndex == null
                ? null
                : createOldDto(_.meals[oldIndex], oldIndex),
            isRefreshing: false));
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
              searchedMeals:[]));
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(isRefreshing: false, editMode: false));
    } catch (e, s) {
      debugLog(e, s);
      showErrorDialogViaRead(e, read);
      state = state.map(
          init: (_) => _, loaded: (_) => _.copyWith(isRefreshing: false));
    }
  }

  OldEditMealDto createOldDto(Meal old,int index) {
    final rest = read(currentLinkedResturant).value!;
    SubCategory? subCate;
    MainCategory? cate;
    for (final main in rest.mainCategory) {
      for (final sub in main.children) {
        if (sub.id == old.subCategoryId) {
          subCate = sub;
          cate = main;
          break;
        }
      }
      if (cate != null) {
        break;
      }
    }
    //TODO handle no category;
    return OldEditMealDto(
        rest.kitchen.firstWhere((element) => element.id == old.kitchenId),
        subCate!,
        cate!,old,index);
  }

  editMealDone(NewMealValue value) async {
    try {
      final _state = state;
      if (_state is LodedMeals && _state.oldEdited != null) {
        final old = _state.oldEdited!;
        state = state.map(
            init: (_) => _,
            loaded: (_) => _.copyWith(
                  isRefreshing: true,
                ));

        final future =
            await read(addResturantServiceProvider).editMeal(value, old.old.id);
        _state.meals[old.index] = future;
        state = _state.copyWith(
          isRefreshing: false,
          editMode: false,
        );
      }
    } catch (e, s) {
      debugLog(e, s);
      showErrorDialogViaRead(e, read);
      state = state.map(
          init: (_) => _, loaded: (_) => _.copyWith(isRefreshing: false));
    }
  }

  onToggleActivate(Meal item) async {
    final _state = state;
    if (_state is LodedMeals) {
      await read(resturantServiceProvider)
          .changeMealActive(item.id,!item.isDisabled);
      item.isDisabled = !item.isDisabled;
      state = _state.copyWith(meals: _state.meals);
    }
  }
}
