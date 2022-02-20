import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart';
import 'package:manger/shared/widget/button_icon.dart';
import 'package:manger/shared/widget/labeled_widget.dart';
import 'package:shared/shared.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  final VoidCallback? onDoneKitchen;
  final VoidCallback? onPayed;
  final VoidCallback? onCancel;
  final VoidCallback? onDeliverd;
  const OrderCard(
      {Key? key,
      required this.order,
      this.onDoneKitchen,
      this.onPayed,
      this.onCancel,
      this.onDeliverd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            LabledWidget(
              label: "رقم الطلب",
              text: order.id.toString(),
            ),
            if (order.customerSpot != null)
              LabledWidget(
                label: "الطاولة",
                text: order.customerSpot!.identifier,
              ),
            LabledWidget(
              label: "السعر",
              text: order.price.toString(),
            ),
            LabledWidget(
              label: "حالة الطلب",
              text: order.status.toArabic,
            ),
            ...order.orderItems.map((e) => Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(e.count.toString()),
                          Text(e.meal.title)
                        ],
                      ),
                      Text(e.notes ?? ""),
                    ],
                  ),
                )),
            Wrap(
              spacing: 5,
              runSpacing: 5,
              children: [
                if (onPayed != null)
                  ButtonIcon(
                    icon: const fluent.Icon(Icons.payments),
                    child: const Text("دفع"),
                    onPressed: onPayed!,
                  ),
                if (onCancel != null)
                  ButtonIcon(
                    icon: const fluent.Icon(Icons.cancel),
                    child: const Text("الغاء"),
                    onPressed: onCancel!,
                  ),
                if (onDeliverd != null)
                  ButtonIcon(
                    icon: const fluent.Icon(Icons.delivery_dining),
                    child: const Text("توصيل"),
                    onPressed: onDeliverd!,
                  ),
                if (onDoneKitchen != null)
                  ButtonIcon(
                    icon: const fluent.Icon(Icons.kitchen),
                    child: const Text("انتهى طبخ"),
                    onPressed: onDoneKitchen!,
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
