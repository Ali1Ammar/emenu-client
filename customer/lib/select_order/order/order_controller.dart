import 'package:customer/entity/create_order.dart';
import 'package:customer/main/auto_router.dart';
import 'package:customer/select_order/order/order_state.dart';
import 'package:customer/select_order/select_order_controller.dart';
import 'package:customer/select_order/select_order_state.dart';
import 'package:customer/service/dio_service.dart';
import 'package:customer/shared/dialog.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final orderController = StateNotifierProvider.family
    .autoDispose<OrderController, OrderState, List<CreateItemFlow>>(
        (_, p) => OrderController(_.read, p),
        dependencies: [selectParam, selectParam, autoRouteProvider]);

class OrderController extends StateNotifier<OrderState> {
  final Reader read;
  final List<CreateItemFlow> orderItems;

  OrderController(this.read, this.orderItems)
      : super(const OrderState(0, 0, false, null)) {
    state = state.copyWith(count: calcMealCount(), price: calcPrice());
  }

  double calcPrice() {
    return orderItems.fold<double>(
        0,
        (previousValue, element) =>
            previousValue + (element.count * element.flow.meal.price));
  }

  int calcMealCount() {
    return orderItems.fold<int>(
        0, (previousValue, element) => previousValue + element.count);
  }

  order() async {
    final param = read(selectParam);
    state = state.copyWith(isLoading: true, error: null);
    try {
      final orderResp = await read(dioService).order(CreateOrderDto(
          orderItems
              .map<CreateOrderItemDto>(
                  (e) => CreateOrderItemDto.fromCreateItemFlow(e))
              .toList(),
          param.customerSpot?.id,
          param.orderType.id));
      read(autoRouteProvider)
          .push(OrderTrackPageRoute(responseCreateOrder: orderResp));
    } catch (e, s) {
      debugLog(e, s);
      state = state.copyWith(error: normlizeError(e));
    }
    state = state.copyWith(isLoading: false);
  }
}
