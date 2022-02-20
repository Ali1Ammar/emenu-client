import 'package:customer/select_order/select_order_controller.dart';
import 'package:customer/select_order/widget/select_main_category.dart';
import 'package:customer/select_order/widget/select_meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

class SelectOrderPage extends StatelessWidget {
  final SelectOrderParam param;
  const SelectOrderPage( { Key? key , required this.param }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        selectParam.overrideWithValue(param)
      ],
      child: Consumer(builder: (context,ref,_){
        final state = ref.watch(selectOrderControllerProvider);
        final cont = ref.watch(selectOrderControllerProvider.notifier);
        
        return WillPopScope(
          onWillPop: cont.tryPop,
          child: Scaffold(
            appBar: AppBar(title: Text("اختيار الطلب"), ) ,
            body:  state.map<Widget>(select: (data){
              if(data.flow.last.mainCategory==null){
               return SelectMainCategoryWidget(mainCategorys: param.realtionResturantCustomer.mainCategory);
              }
              return SelectMealWidget(mainCategory: data.flow.last.mainCategory!, getMealsFuture: cont.getMealViaSubCategory );
              // return Text("error");
            }) ,
          ),
        );
      }) ,
    );
  }
}