import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/login/user.dart';
import 'package:manger/new_rest/new_ordertype_value.dart';
import 'package:manger/shared/dialog.dart';
import 'package:manger/shared/service/add_to_rest_service.dart';
import 'package:manger/shared/service/resturnat_service.dart';
import 'package:manger/ordertype/ordertype_mange_state.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final ordertypeMangerControllerProvider = StateNotifierProvider.autoDispose<
        OrderTypeMangeController, OrderTypeMangeState>(
    (_) => OrderTypeMangeController(_.read, _.watch(resturantServiceProvider)));

class OrderTypeMangeController extends StateController<OrderTypeMangeState> {
  final ResturantService resturantService;
  final Reader read;
  OrderTypeMangeController(this.read, this.resturantService)
      : super(const OrderTypeMangeState.init()) {
    init();
  }

  init() async {
    try {
      final ordertypes = read(currentLinkedResturant).value!.orderType;
      state = OrderTypeMangeState.loaded(
        orderType: ordertypes,
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

  addOrderType(NewOrderTypeValue value) async {
    try {
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(
                isRefreshing: true,
              ));

      final future =
          await read(addResturantServiceProvider).addOrderType(value);
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(orderType: _.orderType..add(future)));
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

  // editOrderTypeDone(NewOrderTypeDto value) async {
  //   try {
  //     final _state = state;
  //     if (_state is LodedOrderTypes && _state.oldEdited != null) {
  //       final old = _state.oldEdited!;
  //       state = state.map(
  //           init: (_) => _,
  //           loaded: (_) => _.copyWith(
  //                 isRefreshing: true,
  //               ));

  //       final future =
  //           await read(addResturantServiceProvider).editOrderType(value, old.old.id);
  //       _state.ordertypes[old.index] = future;
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

  onDelete(OrderType item) async {
    final _state = state;
    if (_state is LodedOrderTypes) {
      await read(addResturantServiceProvider)
          .deleteOrderType(item.id.toString());
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(orderType: _.orderType..remove(item)));
    }
  }
}
