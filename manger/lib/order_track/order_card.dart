import 'package:fluent_ui/fluent_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manger/shared/auto_checkbox.dart';
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
    return Acrylic(
      child: LayoutBuilder(builder: (context, box) {
        return Wrap(
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          runAlignment: WrapAlignment.start,
          children: [
            SizedBox(width: box.maxWidth, child: labelDataWidget()),
            ...[...order.orderItems, ...order.orderItems, ...order.orderItems]
                .map((e) => SizedBox(
                      width: box.maxWidth / 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildMealCard(e, context),
                      ),
                    ))
          ],
        );
      }),
    );
  }

  Acrylic buildMealCard(OrderItem e, BuildContext context) {
    return Acrylic(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(e.meal.title,
              style: FluentTheme.of(context).typography.subtitle),
          Row(
            children: [
              LabledWidget(
                label: "العدد",
                text: e.count.toString(),
              ),
              const Expanded(child: SizedBox()),
              const AutoCheckbox()
            ],
          ),
          if (e.notes != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                e.notes!,
                style: FluentTheme.of(context).typography.bodyLarge,
              ),
            ),
          const Divider()
        ],
      ),
    );
  }

  Widget labelDataWidget() {
    return Row(
      children: [
        Flexible(
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
                label: "حالة",
                text: order.status.toArabic,
              ),
            ],
          ),
        ),
        Flexible(
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              if (onPayed != null)
                ButtonIcon(
                  icon: const FaIcon(FontAwesomeIcons.moneyBill),
                  child: const Text("دفع"),
                  onPressed: onPayed!,
                ),
              if (onCancel != null)
                ButtonIcon(
                  icon: const Icon(FluentIcons.cancel),
                  child: const Text("الغاء"),
                  onPressed: onCancel!,
                ),
              if (onDeliverd != null)
                ButtonIcon(
                  icon: const FaIcon(FontAwesomeIcons.motorcycle),
                  child: const Text("توصيل"),
                  onPressed: onDeliverd!,
                ),
              if (onDoneKitchen != null)
                ButtonIcon(
                  icon: const FaIcon(FontAwesomeIcons.kitchenSet),
                  child: const Text("انتهى طبخ"),
                  onPressed: onDoneKitchen!,
                ),
            ],
          ),
        )
      ],
    );
  }
}
