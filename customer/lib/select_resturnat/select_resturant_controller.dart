import 'package:customer/main/auto_router.dart';
import 'package:customer/select_order/select_order_controller.dart';
import 'package:customer/select_resturnat/select_resturant_state.dart';
import 'package:customer/service/dio_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final selectRestController =
    StateNotifierProvider<SelectResturantController, SelectResturantState>(
        (_) => SelectResturantController(_.read)..init());

class SelectResturantController extends StateNotifier<SelectResturantState> {
  final Reader read;
  SelectResturantController(this.read)
      : super(const SelectResturantState.loadingInit());

  init() async {
    final rest = await read(dioService).getResturants();
    if (rest.length == 1) {
      selectResturnat(rest.first);
    } else {
      state = SelectResturantState.loadResturants(rest);
    }
  }

  selectResturnat(Resturant item) async {
    state = SelectResturantState.loadingOrderType(item);
    final restRealtion = await read(dioService).getResutrnatRelation(item.id);
    if (restRealtion.orderType.length == 1) {
      selectOrderType(restRealtion.orderType.first);
    }
    state = SelectResturantState.loadSelectedResturant(restRealtion);
  }

  selectOrderType(OrderType orderType) async {
    state.whenOrNull(loadSelectedResturant: (rest) {
      read(autoRouteProvider).push(
          SelectOrderPageRoute(param: SelectOrderParam(rest, orderType, null)));
    });
  }
}
