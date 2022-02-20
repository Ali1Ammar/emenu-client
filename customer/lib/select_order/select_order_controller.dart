import 'package:customer/entity/create_order.dart';
import 'package:customer/entity/resturant_realtion.dart';
import 'package:customer/select_order/select_order_state.dart';
import 'package:customer/service/dio_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final selectParam =
    Provider<SelectOrderParam>((_) => throw UnimplementedError());

final selectOrderControllerProvider =
    StateNotifierProvider<SelectOrderController, SelectOrder>((_) {
  return SelectOrderController(_.read, _.watch(selectParam));
}, dependencies: [selectParam, dioService]);

class SelectOrderParam {
  final RealtionResturantCustomer realtionResturantCustomer;
  final OrderType orderType;
  final CustomerSpot? customerSpot;

  SelectOrderParam(
      this.realtionResturantCustomer, this.orderType, this.customerSpot);
}

class SelectOrderController extends StateNotifier<SelectOrder> {
  final Reader read;
  final SelectOrderParam params;
  DioService get service => read(dioService);
  final Map<SubCategory, Future<List<Meal>>> subCategoryToMeal = {};
  SelectOrderController(
    this.read,
    this.params,
  ) : super(SelectOrder.select(
            List.of([const SelectFlow(null, null, null)]), []));

  selectMainCategory(MainCategory category) {
    state = state.copyWith(
        flow: state.flow
          ..add(state.flow.last.copyWith(mainCategory: category)));
  }

  selectMeal(Meal meal, SubCategory subCategory) {
    state = state.copyWith(
        flow: state.flow
          ..add(
              state.flow.last.copyWith(meal: meal, subCategory: subCategory)));
  }

  addItemOrder(Meal meal, int count, List<String> extra, String note) {
    final last = state.flow.removeLast();
    state = state.copyWith(
        orderItems: state.orderItems
          ..add(CreateItemFlow(count, last, note, extra)));
  }

  Future<bool> tryPop() async {
    if (state.flow.length > 1) {
      state = state.copyWith(flow: state.flow..removeLast());
      return false;
    }
    return true;
  }

  Future<List<Meal>> getMealViaSubCategory(SubCategory subCategory) =>
      subCategoryToMeal.putIfAbsent(
          subCategory, () => service.getMeal(subCategory.id));
}
