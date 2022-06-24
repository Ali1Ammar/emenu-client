import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/login/user.dart';
import 'package:manger/new_rest/new_category_value.dart';
import 'package:manger/shared/dialog.dart';
import 'package:manger/shared/service/add_to_rest_service.dart';
import 'package:manger/shared/service/resturnat_service.dart';
import 'package:manger/category/category_mange_state.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final categoryMangerControllerProvider = StateNotifierProvider.autoDispose<
        CategoryMangeController, CategoryMangeState>(
    (_) => CategoryMangeController(_.read, _.watch(resturantServiceProvider)));

class CategoryMangeController extends StateController<CategoryMangeState> {
  final ResturantService resturantService;
  final Reader read;
  CategoryMangeController(this.read, this.resturantService)
      : super(const CategoryMangeState.init()) {
    init();
  }

  init() async {
    try {
      final categorys = read(currentLinkedResturant).value!.mainCategory;
      state = CategoryMangeState.loaded(
        categorys: categorys,
      );
    } catch (e, s) {
      debugLog(e, s);
      showErrorDialogViaRead(e, read);
    }
  }

  setEditMode(bool value, int? oldIndex) {
    state = state.map(
        init: (_) => _,
        loaded: (_) =>
            _.copyWith(editMode: value, oldEdited: null, isRefreshing: false));
  }

  addCategory(NewCategoryValue value) async {
    try {
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(
                isRefreshing: true,
              ));

      final future =
          await read(addResturantServiceProvider).addCategorty(value);
      final categorys = read(currentLinkedResturant).value!.mainCategory
        ..add(future);

      state = state.map(
          init: (_) => _, loaded: (_) => _.copyWith(categorys: categorys));
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

  // editCategoryDone(NewCategoryDto value) async {
  //   try {
  //     final _state = state;
  //     if (_state is LodedCategorys && _state.oldEdited != null) {
  //       final old = _state.oldEdited!;
  //       state = state.map(
  //           init: (_) => _,
  //           loaded: (_) => _.copyWith(
  //                 isRefreshing: true,
  //               ));

  //       final future =
  //           await read(addResturantServiceProvider).editCategory(value, old.old.id);
  //       _state.categorys[old.index] = future;
  //       state = _state.copyWith(
  //         isRefreshing: false,
  //         editMode: false,
  //       );
  //     }
  //   } catch (e, s) {
  //     debugLog(e, s);
  //     showErrorDialogViaRead(e, read);
  //     state = state.map(
  //         init: (_) => _, loaded: (_) => _.copyWith(isRefreshing: false));
  //   }
  // }

  // onDelete(MainCategory item) async {
  //   final _state = state;
  //   if (_state is LodedCategorys) {
  //     await read(addResturantServiceProvider)
  //         .deleteCategory(item.id.toString());
  //     state = state.map(
  //         init: (_) => _,
  //         loaded: (_) => _.copyWith(categorys: _.categorys..remove(item)));
  //   }
  // }
}
