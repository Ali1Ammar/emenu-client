

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part "home_state.freezed.dart";

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading()  = LoadingHome;
    // const factory HomeState.createNewResturant()  = Create;
  const factory HomeState.loadedSystemAdmin(List<Resturant> resturnats,Resturant? linkedResturnat)  = LoadedAllResturant;//for system admin
  const factory HomeState.loadedUserResturant(Resturant resturnats)  = LoadedUserResturant; // for resturant admin only
  const factory HomeState.emptyUser()  = EmptyUser; // when user is not system admin and isn't linked to any resturant yet

}


// class ReturnHomeDto {
//   List<Restrant> resturant;
//   List<
// }

/**
 * system user with multi  rest
 * system user with only one rest that link to him
 * rest user with only one rest that link to him
 */