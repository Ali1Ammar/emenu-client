import 'dart:async';

import 'package:manger/order_track/order_track_state.dart';
import 'package:manger/shared/service/order_service.dart';
import 'package:manger/shared/service/socketio_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';
import 'package:tuple/tuple.dart';

final orderTrackControllerProvider = StateNotifierProvider.autoDispose
    .family<OrderTrackController, OrderTrackState, OrderTrack>(
        (_, param) => OrderTrackController(param, _.read));

class OrderTrackController extends StateNotifier<OrderTrackState> {
  final Reader read;

  final OrderTrack input;
  StreamSubscription? subscription;
  StreamSubscription? subscriptionChange;

  OrderTrackController(this.input, this.read)
      : super(OrderTrackState.init(input)) {
    init();
  }
  init() async {
    await catchAndLogError(() async {
      await lisienToScoket();
    });
  }

  lisienToScoket() {
    subscription?.cancel();
    subscriptionChange?.cancel();

    final streams = input.getStreamOrder(read(socketIoServiceProvider));
    subscription = streams.item1.listen((event) {
      state.map(
          init: (_) {
            state = OrderTrackState.loaded(orders: event);
          },
          loaded: (_) => state = _.copyWith(orders: _.orders..addAll(event)));
    });
    subscriptionChange = streams.item2.listen((event) {
      state.mapOrNull(loaded: (_) {
        final orderIndex =
            _.orders.indexWhere((element) => element.id == event.id);
        if (orderIndex != -1) {
          final oldOrder = _.orders[orderIndex];
          final newOrder =
              oldOrder.copyWith(isPayed: event.isPayed, status: event.status);
          _.orders[orderIndex] = newOrder;
          state = _.copyWith(orders: _.orders);
        }
      });
    });
  }

  clickChangeStatus(Order order, OrderStatus status) async {
    //TODO change the button at ui
    await read(orderServiceProvider).statusUpdate(order.id, status);
  }

  clickDeliverd(Order order) async {
    //TODO change the button at ui
    await read(orderServiceProvider).statusUpdate(
        order.id,
        order.type.paymentType == PaymentType.beforeTakeOrder
            ? OrderStatus.DeliveredByKitchen
            : OrderStatus.Done);
  }

  clickPay(Order order) async {
    //TODO change the button at ui
    await read(orderServiceProvider).payed(order.id);
  }

  @override
  void dispose() {
    subscription?.cancel();
    subscriptionChange?.cancel();
    super.dispose();
  }
}

abstract class OrderTrack {
  String get title;
  // Future<List<Order>> selectCurrentOrder(
  //     ResturantService resturantService);
  Tuple2<Stream<List<Order>>, Stream<OrderChange>> getStreamOrder(
      SocketIoService socketIoService);
  const OrderTrack();
  factory OrderTrack.kitchen(Kitchen kitchen) => OrderTrackKitchen(kitchen);
  factory OrderTrack.resturant() => OrderTrackResturnat();
}

class OrderTrackKitchen extends OrderTrack {
  final Kitchen kitchen;

  OrderTrackKitchen(this.kitchen);

  @override
  Tuple2<Stream<List<Order>>, Stream<OrderChange>> getStreamOrder(
      socketIoService) {
    return socketIoService.lisienToKitchenOrder(
        kitchen.id, kitchen.resturantId);
  }

  // @override
  // Future<List<Order>> selectCurrentOrder(resturantService) async {
  //   return await resturantService.getLinkedKitchenDoneOrder(kitchen.id);
  // }

  @override
  late final String title = "طلبات المطبخ : ${kitchen.name}";
}

class OrderTrackResturnat extends OrderTrack {
  @override
  Tuple2<Stream<List<Order>>, Stream<OrderChange>> getStreamOrder(
      socketIoService) {
    return socketIoService.lisienTResturantOrder();
  }

  // @override
  // Future<List<Order>> selectCurrentOrder(resturantService) async {
  //   return await resturantService.getLinkedDoneOrder();
  // }

  @override
  late final title = "طلبات المطعم كامل";
}
