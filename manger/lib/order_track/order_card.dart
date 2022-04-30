import 'package:fluent_ui/fluent_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manger/shared/auto_checkbox.dart';
import 'package:manger/shared/widget/button_icon.dart';
import 'package:manger/shared/widget/labeled_widget.dart';
import 'package:shared/shared.dart';

class OrderCard extends StatefulWidget {
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
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Animation<Color?>? animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      reverseDuration: const Duration(milliseconds: 100),
      vsync: this,
    );

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      animation = ColorTween(
        begin: FluentTheme.of(context).cardColor,
        end: FluentTheme.of(context).cardColor.withOpacity(0.2),
      ).animate(_controller)
        ..addListener(() {
          setState(() {});
        });
    });
  }

  @override
  void didUpdateWidget(OrderCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.order.status != widget.order.status) {
      _controller.forward().then((value) {
        _controller.reverse();
      });
    }
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Card(
      backgroundColor: animation?.value,
      child: OrderCardBase(
        order: widget.order,
        onCancel: widget.onCancel,
        onDeliverd: widget.onDeliverd,
        onDoneKitchen: widget.onDoneKitchen,
        onPayed: widget.onPayed,
      ),
    );
  }
}

class OrderCardBase extends StatelessWidget {
  final Order order;
  final VoidCallback? onDoneKitchen;
  final VoidCallback? onPayed;
  final VoidCallback? onCancel;
  final VoidCallback? onDeliverd;
  const OrderCardBase(
      {Key? key,
      required this.order,
      this.onDoneKitchen,
      this.onPayed,
      this.onCancel,
      this.onDeliverd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, box) {
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
    });
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
          child: Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 5,
              runSpacing: 5,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              children: <Widget?>[
                button(
                  icon: FontAwesomeIcons.moneyBill,
                  text: "دفع",
                  onPressed: onPayed,
                ),
                button(
                  icon: FontAwesomeIcons.utensils,
                  text: "ايصال للزبون",
                  onPressed: onDeliverd,
                ),
                button(
                  icon: FontAwesomeIcons.circleCheck,
                  text: "انتهى طبخ",
                  onPressed: onDoneKitchen,
                ),
                button(
                  icon: FontAwesomeIcons.xmark,
                  text: "الغاء",
                  onPressed: onCancel,
                ),
              ].where((element) => element != null).map((e) => e!).toList(),
            ),
          ),
        )
      ],
    );
  }

  Widget? button(
      {required String text,
      required IconData icon,
      required VoidCallback? onPressed}) {
    if (onPressed != null) {
      return ButtonIcon(
        icon: FaIcon(icon),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ),
        onPressed: onPressed,
      );
    } else {
      return null;
    }
  }
}
