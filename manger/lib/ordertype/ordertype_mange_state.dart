import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manger/login/user.dart';
import 'package:shared/shared.dart';

part "ordertype_mange_state.freezed.dart";

@freezed
class OrderTypeMangeState with _$OrderTypeMangeState {
  const factory OrderTypeMangeState.init( [@Default(false) bool isError]) = InitOrderTypes;
  const factory OrderTypeMangeState.loaded(
      {required List<OrderType> orderType,
      @Default(null) OldEditOrderTypeDto? oldEdited,
      @Default(false) bool editMode ,  @Default(false) bool isRefreshing }) = LodedOrderTypes;
}



class OldEditOrderTypeDto {
  final User old;
  final int index;
  OldEditOrderTypeDto(this.old,this.index);
}