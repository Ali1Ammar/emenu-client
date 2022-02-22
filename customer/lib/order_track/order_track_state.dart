import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part "order_track_state.freezed.dart";

@freezed
class OrderTrackState with _$OrderTrackState {
  const factory OrderTrackState(
          Order order, List<OrderChange> orderChange, bool isListen,OrderStatus currentStatus , bool isPayed,List<OrderStatus> statusStep ) =
      _OrderTrackState;
}
