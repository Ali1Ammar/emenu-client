import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manger/login/user.dart';
import 'package:shared/shared.dart';

part "staff_mange_state.freezed.dart";
@freezed
class StaffMangeState with _$StaffMangeState {
  const factory StaffMangeState.init( [@Default(false) bool isError]) = InitStaffs;
  const factory StaffMangeState.loaded(
      {required List<User> staffs,
      @Default(null) OldEditStaffDto? oldEdited,
      @Default(false) bool editMode ,  @Default(false) bool isRefreshing }) = LodedStaffs;
}



class OldEditStaffDto {
  final User old;
  final int index;
  OldEditStaffDto(this.old,this.index);
}