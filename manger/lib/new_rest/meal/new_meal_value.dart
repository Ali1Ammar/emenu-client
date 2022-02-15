import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part "new_meal_value.g.dart";

@JsonSerializable()
class NewMealValue {
  String? title;
  String? desc;
  String? img;
  double? price;
  int? kitchenId;
  int? subCategoryId;
  List<String>? extra;
  NewMealValue();
  // factory NewMealValue.fromMeal(Meal meal){
  //   return NewMealValue()..title=meal.title
  //                       ..subCategoryId=meal.subCategoryId
  //                       ..desc=meal.desc
  //                       ..extra=meal.extra
  //                       ..img=meal.img
  //                       ..kitchenId=meal.kitchenId
  //                       ..price=meal.price;
  // }

  bool get isAllNull => [title,desc,img,price,kitchenId,subCategoryId,extra].every((element) => element==null)  ;
  bool get isAnyRequiredNull => [title,desc,img,price,subCategoryId].any((element) => element==null)  ;


  Map<String, dynamic> toJson() => _$NewMealValueToJson(this);
}
