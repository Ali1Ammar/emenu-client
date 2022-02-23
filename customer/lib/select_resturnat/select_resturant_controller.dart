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
  SelectResturantState? loadedHistory;
  init() async {
    final rest = await read(dioService).getResturants();
    state = SelectResturantState.loadResturants(rest);

    if (rest.length == 1) {
      selectResturnat(rest.first);
    }
  }

  selectResturnat(Resturant item) async {
    loadedHistory = state;
    state = SelectResturantState.loadingOrderType(item);
    final restRealtion = await read(dioService).getResutrnatRelation(item.id);
    state = SelectResturantState.loadSelectedResturant(restRealtion);
    if (restRealtion.orderType.length == 1) {
      read(autoRouteProvider).push(SelectOrderPageRoute(
          param: SelectOrderParam(
              restRealtion, restRealtion.orderType.first, null)));
    }
  }

  selectOrderType(OrderType orderType) async {
    state.whenOrNull(loadSelectedResturant: (rest) {
      read(autoRouteProvider).push(
          SelectOrderPageRoute(param: SelectOrderParam(rest, orderType, null)));
    });
  }

  Future<bool> tryPop() async {
    if (loadedHistory != null) {
      state = loadedHistory!;
      loadedHistory = null;
      return false;
    }
    return true;
  }
}
