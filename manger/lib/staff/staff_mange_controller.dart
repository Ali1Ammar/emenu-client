import 'package:manger/login/user.dart';
import 'package:manger/new_rest/new_staff_value.dart';
import 'package:manger/shared/dialog.dart';
import 'package:manger/shared/service/add_to_rest_service.dart';
import 'package:manger/shared/service/resturnat_service.dart';
import 'package:manger/staff/staff_mange_state.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final staffMangerControllerProvider =
    StateNotifierProvider.autoDispose<StaffMangeController, StaffMangeState>(
        (_) => StaffMangeController(_.read, _.watch(resturantServiceProvider)));

class StaffMangeController extends StateController<StaffMangeState> {
  final ResturantService resturantService;
  final Reader read;
  StaffMangeController(this.read, this.resturantService)
      : super(const StaffMangeState.init()) {
    init();
  }

  init() async {
    try {
      final staffs = await resturantService.getLinkedResturantStaff();
      state = StaffMangeState.loaded(
        staffs: staffs,
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

  addStaff(NewStaffDto value) async {
    try {
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(
                isRefreshing: true,
              ));

      final future = await read(addResturantServiceProvider).addStaff(value);
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(staffs: _.staffs..add(future)));
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

  // editStaffDone(NewStaffDto value) async {
  //   try {
  //     final _state = state;
  //     if (_state is LodedStaffs && _state.oldEdited != null) {
  //       final old = _state.oldEdited!;
  //       state = state.map(
  //           init: (_) => _,
  //           loaded: (_) => _.copyWith(
  //                 isRefreshing: true,
  //               ));

  //       final future =
  //           await read(addResturantServiceProvider).editStaff(value, old.old.id);
  //       _state.staffs[old.index] = future;
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

  onDelete(User item) async {
    final _state = state;
    if (_state is LodedStaffs) {
      await read(addResturantServiceProvider).deleteStaff(item.id.toString());
      state = state.map(
          init: (_) => _,
          loaded: (_) => _.copyWith(staffs: _.staffs..remove(item)));
    }
  }
}
