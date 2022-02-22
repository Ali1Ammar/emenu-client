import 'package:customer/select_order/select_meal/select_meal_state.dart';
import 'package:customer/service/dio_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final subCategoryMealsMapController =
    Provider<SubCategoryMealsMapController>(
  (ref) {
    final c = SubCategoryMealsMapController(ref.read);
    ref.onDispose(() {
      c.dispose();
    });
    return c;
  },
);

class SubCategoryMealsMapController {
  final Map<SubCategory, SubCategorToMealsController> state = {};
  final Reader read;
  SubCategoryMealsMapController(this.read);
  SubCategorToMealsController getController(SubCategory subCategory) =>
      state.putIfAbsent(subCategory,
          () => SubCategorToMealsController(subCategory, read)..init());

  dispose() {
    for (var item in state.values) {
      item.dispose();
    }
  }
}

class SubCategorToMealsController extends StateNotifier<SubCategotyState> {
  final SubCategory subCategory;
  final Reader read;
  DioService get service => read(dioService);

  SubCategorToMealsController(this.subCategory, this.read)
      : super(const SubCategotyState.loadingMeal());

  init() {
    service.getMeal(subCategory.id).then((value) {
      state = SubCategotyState.loaded(value, true);
    });
  }

  toggle() {
    state.mapOrNull(loaded: (loaded) {
      state = loaded.copyWith(isChecked: !loaded.isChecked);
    });
  }
}
