import 'package:customer/select_order/order/order_controller.dart';
import 'package:customer/select_order/select_order_state.dart';
import 'package:customer/shared/dialog.dart';
import 'package:customer/shared/number_format.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

class OrderListWidget extends ConsumerWidget {
  final List<CreateItemFlow> orderItems;
  const OrderListWidget({Key? key, required this.orderItems}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderController(orderItems));
    final controller = ref.watch(orderController(orderItems).notifier);

    final style = Theme.of(context).textTheme.titleMedium;
    return ListView(
      children: [
        if(state.error!=null) Text(normlizeError(state.error!)),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.monetization_on),
                    const SizedBox(
                      width: 8,
                    ),
                    Text("السعر النهائي : ", style: style),
                    Text(
                      "${numberFormat.format(state.price)} دينار",
                      style: style,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Icon(Icons.food_bank),
                    const SizedBox(
                      width: 8,
                    ),
                    Text("عدد الطلبات الكلي : ", style: style),
                    Text(
                      state.count.toString(),
                      style: style,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: state.isLoading
                  ? null
                  : () {
                      controller.order();
                    },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: state.isLoading
                    ? const CenterLoading()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("اطلب الان"),
                          Icon(Icons.start_outlined)
                        ],
                      ),
              )),
        ),
        ...orderItems.map<Widget>((e) => ExpansionTile(
              title: Text(e.flow.meal.title),
              trailing: Text(
                  "${numberFormat.format(e.flow.meal.price)} * ${e.count}"),
              leading: Image.network(getImageUrl(e.flow.meal.img),
                  width: 60, height: 60, fit: BoxFit.cover),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...[
                          e.flow.meal.desc,
                          ...e.selectedExtra,
                          if (e.nodes.isNotEmpty) e.nodes
                        ].map((e) => Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                e,
                                style: style,
                              ),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
