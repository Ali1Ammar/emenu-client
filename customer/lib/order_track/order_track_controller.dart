import 'dart:async';

import 'package:customer/entity/create_feedback.dart';
import 'package:customer/entity/response_create_order.dart';
import 'package:customer/order_track/order_track_state.dart';
import 'package:customer/service/dio_service.dart';
import 'package:customer/service/socketio_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final orderTrackController = StateNotifierProvider.autoDispose
    .family<OrderTrackController, OrderTrackState, ResponseCreateOrder>(
        (ref, param) {
  return OrderTrackController(
      param,
      ref.watch(socketIoServiceProvider(param.accessToken)),
      ref.watch(dioService))
    ..init();
});

class OrderTrackController extends StateNotifier<OrderTrackState> {
  final SocketIoService ioService;
  StreamSubscription<OrderChange>? subc;
  final DioService dioService;
  final ResponseCreateOrder responseOrder;
  OrderTrackController(this.responseOrder, this.ioService, this.dioService)
      : super(OrderTrackState(responseOrder.order, [], false,
            responseOrder.order.status, responseOrder.order.isPayed, null));

  init() async {
    await subc?.cancel();
    subc = ioService.lisienToOrderChange().listen((event) {
      state = state.copyWith(
          orderChange: state.orderChange..add(event),
          isPayed: event.isPayed ?? state.isPayed,
          currentStatus: event.status ?? state.currentStatus);
    });
  }

  sentReview(List<FeedBackType> feedbacks, int rate, String note) {
    _sentReview(
      CreateFeedback(responseOrder.order.id, note, rate, feedbacks),
    );
  }

  _sentReview(CreateFeedback? feedback) {
    state = state.copyWith(feedBack: const AsyncValue.loading());
    dioService.sentReview(feedback, responseOrder.accessToken).then((value) {
      state = state.copyWith(feedBack: AsyncValue.data(value));
    }).catchError((e, s) {
      state = state.copyWith(
          feedBack: AsyncValue.error(e as Object, stackTrace: s));
    });
  }

  skipReview() {
    _sentReview(null);
  }
}
