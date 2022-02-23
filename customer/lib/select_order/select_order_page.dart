import 'package:customer/select_order/order/order_page.dart';
import 'package:customer/select_order/select_meal/select_meal.dart';
import 'package:customer/select_order/select_order_controller.dart';
import 'package:customer/select_order/select_order_state.dart';
import 'package:customer/select_order/widget/add_meal.dart';
import 'package:customer/select_order/widget/select_main_category.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectOrderPage extends StatelessWidget {
  final SelectOrderParam param;
  const SelectOrderPage({Key? key, required this.param}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [selectParam.overrideWithValue(param)],
      child: Consumer(builder: (context, ref, _) {
        final state = ref.watch(selectOrderControllerProvider);
        final cont = ref.watch(selectOrderControllerProvider.notifier);

        return WillPopScope(
          onWillPop: cont.tryPop,
          child: Scaffold(
            appBar: AppBar(
              title: Text(state.flow.last.map<String>(
                  selectCategory: (_) => "اختيار تصنيف",
                  selectMeal: (_) => "اختر الوجبة",
                  addMeal: (_) => "طلب الوجبة",
                  orderList: (_) => "طلباتك")),
              leading: const BackButton(),
              actions: [
                IconButton(
                    onPressed: () {
                      if (state.flow.last is OrderList) {
                        cont.tryPop();
                      } else {
                        cont.pressOrderCart();
                      }
                    },
                    icon: Stack(
                      children: [
                        Text(state.orderItems.length.toString()),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.shopping_cart),
                        ),
                      ],
                    ))
              ],
            ),
            body: state.map<Widget>(select: (data) {
              return data.flow.last.map<Widget>(
                  selectCategory: (_) => SelectMainCategoryWidget(
                      mainCategorys:
                          param.realtionResturantCustomer.mainCategory),
                  selectMeal: (_) => SelectMealWidget(
                        mainCategory: _.mainCategory,
                      ),
                  addMeal: (_) => AddMealWidget.fromFlow(_),
                  orderList: (_) =>
                      OrderListWidget(orderItems: data.orderItems));

              // return Text("error");
            }),
          ),
        );
      }),
    );
  }
}
