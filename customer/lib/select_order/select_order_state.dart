import 'package:customer/entity/create_order.dart';
import 'package:customer/entity/resturant_realtion.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'select_order_state.freezed.dart';

@freezed
class SelectOrder with _$SelectOrder {
  const factory SelectOrder.select(List<SelectFlow> flow , List<CreateItemFlow> orderItems ) = Select;

  // const factory SelectState.selectCategory( List<MainCategory> categorys) = SelectCategory;
}

@freezed
class SelectFlow with _$SelectFlow {
  const factory SelectFlow(  MainCategory? mainCategory,
  SubCategory? subCategory,
  Meal? meal) = _SelectFlow;
}



class CreateItemFlow {
  final int count;
  final SelectFlow flow;
  final String nodes;
  final List<String> selectedExtra;

  CreateItemFlow(this.count, this.flow, this.nodes, this.selectedExtra);

}
