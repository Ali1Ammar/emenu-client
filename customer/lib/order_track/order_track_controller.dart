import 'dart:async';

import 'package:customer/entity/response_create_order.dart';
import 'package:customer/order_track/order_track_state.dart';
import 'package:customer/service/socketio_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final orderTrackController = StateNotifierProvider.autoDispose
    .family<OrderTrackController, OrderTrackState, ResponseCreateOrder>(
        (ref, param) {
  return OrderTrackController(
      param, ref.watch(socketIoServiceProvider(param.accessToken)))
    ..init();
});

class OrderTrackController extends StateNotifier<OrderTrackState> {
  final SocketIoService ioService;
  StreamSubscription<OrderChange>? subc;
  OrderTrackController(ResponseCreateOrder order, this.ioService)
      : super(OrderTrackState(order.order, [], false, order.order.status,
            order.order.isPayed, [])) {
    state = state.copyWith(statusStep: generateStepList());
  }
  List<OrderStatus> generateStepList() {
    return state.order.type.paymentType == PaymentType.beforeTakeOrder
        ? [
            OrderStatus.WaitPayment,
            OrderStatus.WaitInKitchen,
            OrderStatus.DoneByKitchen,
            OrderStatus.DeliveredByKitchen,
            OrderStatus.Done
          ]
        : [
            OrderStatus.WaitInKitchen,
            OrderStatus.DoneByKitchen,
            OrderStatus.DeliveredByKitchen,
            OrderStatus.WaitPayment,
            OrderStatus.Done
          ];
  }

  init() async {
    await subc?.cancel();
    subc = ioService.lisienToOrderChange().listen((event) {
      state = state.copyWith(
          orderChange: state.orderChange..add(event),
          isPayed: event.isPayed ?? state.isPayed,
          currentStatus: event.status ?? state.currentStatus);
    });
  }


  sentReview( List<FeedBackType> feedbacks , int rate , String note ){
    
  }
}
