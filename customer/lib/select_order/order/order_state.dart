

import 'package:freezed_annotation/freezed_annotation.dart';

part "order_state.freezed.dart";
@freezed
class OrderState with _$OrderState {
  const factory OrderState(double price , int count,bool isLoading,Object? error) = _OrderState;
}