import 'dart:async';

import 'package:manger/order_track/order_track_state.dart';
import 'package:manger/shared/service/socketio_service.dart';
import 'package:manger/shared/logger.dart';
import 'package:manger/shared/service/resturnat_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final orderTrackControllerProvider = StateNotifierProvider.autoDispose
    .family<OrderTrackController, OrderTrackState, OrderTrack>(
        (_, param) => OrderTrackController(param, _.read));

class OrderTrackController extends StateNotifier<OrderTrackState> {
  final Reader read;

  final OrderTrack input;
  StreamSubscription? subscription;
  OrderTrackController(this.input, this.read)
      : super(OrderTrackState.init(input)){
        init();
      }
  init() async {
    await catchAndLogError(() async {
      await lisienToScoket();
    });
  }

  lisienToScoket() {
    subscription?.cancel();
    subscription =
        input.getStreamOrder(read(socketIoServiceProvider)).listen((event) {
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(orders: _.orders..addAll(event)));
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }
}

abstract class OrderTrack {
  String get title;
  // Future<List<Order>> selectCurrentOrder(
  //     ResturantService resturantService);
  Stream<List<Order>> getStreamOrder(SocketIoService socketIoService);
  const OrderTrack();
  factory OrderTrack.kitchen(Kitchen kitchen) => OrderTrackKitchen(kitchen);
  factory OrderTrack.resturant() => OrderTrackResturnat();
}

class OrderTrackKitchen extends OrderTrack {
  final Kitchen kitchen;

  OrderTrackKitchen(this.kitchen);

  @override
  Stream<List<Order>> getStreamOrder(socketIoService) {
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
  Stream<List<Order>> getStreamOrder(socketIoService) {
    return socketIoService.lisienTResturantOrder();
  }

  // @override
  // Future<List<Order>> selectCurrentOrder(resturantService) async {
  //   return await resturantService.getLinkedDoneOrder();
  // }

  @override
  late final title = "طلبات المطعم كامل";
}
