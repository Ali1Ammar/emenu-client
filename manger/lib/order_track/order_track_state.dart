import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manger/order_track/order_track_controller.dart';
import 'package:shared/shared.dart';

part 'order_track_state.freezed.dart';

@freezed
class OrderTrackState with _$OrderTrackState {
  const factory OrderTrackState.init(OrderTrack input) = OrderTrackStateLoading;
  const factory OrderTrackState.loaded({required List<Order> orders}) =
      OrderTrackStateLoaded;
}


