
import 'package:customer/entity/resturant_realtion.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuzzy/fuzzy.dart';
import 'package:shared/shared.dart';

part 'select_resturant_state.freezed.dart';

@freezed
class SelectResturantState with _$SelectResturantState {
  const factory SelectResturantState.loadingInit() = LoadingInit;
  const factory SelectResturantState.loadResturants(List<Resturant> resturnats ,Fuzzy<Resturant>? fuzzySearch , List<Resturant> resturnatSearch   ) = LoadResturants;
  const factory SelectResturantState.loadingOrderType(Resturant resturant) = LoadingOrder;
  const factory SelectResturantState.loadSelectedResturant(   RealtionResturantCustomer resturant ) = LoadSelectedResturant;
  // const factory SelectState.selectCategory( List<MainCategory> categorys) = SelectCategory;
  // const factory SelectState.selectMeals(List<Meal> meals ) = SelectMeals;
}
