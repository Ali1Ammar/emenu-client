import 'package:customer/entity/order_select_data.dart';
import 'package:customer/select_order/select_meal/select_meal_controller.dart';
import 'package:customer/select_order/select_order_state.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final selectParam =
    Provider<OrderSelectData>((_) => throw UnimplementedError());

final selectOrderControllerProvider =
    StateNotifierProvider<SelectOrderController, SelectOrder>((_) {
  return SelectOrderController(_.watch(selectParam), _.refresh);
}, dependencies: [selectParam]);



class SelectOrderController extends StateNotifier<SelectOrder> {
  final OrderSelectData params;
  State Function<State>(ProviderBase<State>) refresh;

  SelectOrderController(this.params, this.refresh)
      : super(SelectOrder.select(
            List.of([const SelectFlow.selectCategory()]), []));

  selectMainCategory(MainCategory category) {
    _addToFlow(SelectFlow.selectMeal(category));
  }

  selectMeal(
    Meal meal,
    SubCategory subCategory,
  ) {
    final mainCategory = state.flow.last.mapOrNull(
        addMeal: (_) => _.mainCategory, selectMeal: (_) => _.mainCategory);
    if (mainCategory != null) {
      _addToFlow(SelectFlow.addMeal(mainCategory, subCategory, meal));
    }
  }

  pressOrderCart() {
    _addToFlow(const SelectFlow.orderList());
  }

  void _addToFlow(SelectFlow flow) {
    state = state.copyWith(flow: state.flow..add(flow));
  }

  addItemOrder(Meal meal, int count, List<String> extra, String note) {
    final last = state.flow.removeLast() as AddMeal;
    state = state.copyWith(
        orderItems: state.orderItems
          ..add(CreateItemFlow(count, last, note, extra)));
  }

  Future<bool> tryPop() async {
    if (state.flow.length > 1) {
      final deleted = state.flow.removeLast();
      if (deleted is SelectMeal) {
        refresh(subCategoryMealsMapController);
      }
      state = state.copyWith();
      // ref
      return false;
    }
    return true;
  }
}
