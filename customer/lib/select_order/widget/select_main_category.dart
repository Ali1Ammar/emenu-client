import 'package:customer/select_order/select_order_controller.dart';
import 'package:customer/shared/context_helper.dart';
import 'package:customer/widget/category_card.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class SelectMainCategoryWidget extends StatelessWidget {
  final List<MainCategory> mainCategorys;
  const SelectMainCategoryWidget({ Key? key,required this.mainCategorys }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GridView.count(
crossAxisCount: 2,
      children: mainCategorys.map<Widget>((e) => InkWell(
        onTap: (){
          
          context.riverpod.read(selectOrderControllerProvider.notifier).selectMainCategory(e) ;
        },
        child: CategoryCard(mainCategory: e,)
      )).toList() ,
    );
  }
}