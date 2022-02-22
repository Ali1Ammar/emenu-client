import 'package:customer/entity/response_create_order.dart';
import 'package:customer/order_track/order_track_controller.dart';
import 'package:customer/shared/set_hook.dart';
import 'package:customer/widget/rate_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

class OrderTrackPage extends HookConsumerWidget {
  final ResponseCreateOrder responseCreateOrder;
  const OrderTrackPage({Key? key, required this.responseCreateOrder})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderTrackController(responseCreateOrder));
    final cont = ref.watch(orderTrackController(responseCreateOrder).notifier);
    final style = Theme.of(context).textTheme.headline5;
    final noteCont = useTextEditingController();
    final rate = useValueNotifier<double>(3);
    final set = useSetHook<FeedBackType>();
    return Scaffold(
        appBar: AppBar(
          title: const Text("تتبع الطلب"),
        ),
        body: ListView(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("رقم الطلب ${state.order.id}"),
            )),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("حالة الطلب : ${state.currentStatus.toArabic}"),
              ),
            ),
            AspectRatio(
                aspectRatio: 1,
                child: SvgPicture.asset(generateSvgName(state.currentStatus))),
            if (state.currentStatus == OrderStatus.WaitPayment)
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(state.order.type.paymentMsg, style: style),
              )),
            if (state.currentStatus == OrderStatus.DoneByKitchen)
              Center(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(state.order.type.deliverMsg, style: style))),
            if (state.currentStatus == OrderStatus.Done ||
                (state.currentStatus == OrderStatus.DoneByKitchen &&
                    state.isPayed))
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: noteCont,
                        decoration: const InputDecoration(
                            labelText: "ما رئيك في المطعم",
                            border: OutlineInputBorder()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RatingStars(
                          editable: true,
                          rating: rate,
                        ),
                      ),
                      const Text("هل واجهتك احدى مشاكل الاتية : "),
                      ...FeedBackType.values.map((e) => CheckboxListTile(
                          title: Text(e.toAr),
                          value: set.contains(e),
                          onChanged: (val) {
                            set.toggle(e);
                          })),
                      ElevatedButton(
                          onPressed: () {
                            cont.sentReview(set.set.toList(),
                                rate.value.toInt(), noteCont.text);
                          },
                          child: const Center(child: Text("ارسال التقييم")))
                    ],
                  ),
                ),
              )
          ],
        ));
  }

  String generateSvgName(OrderStatus status) {
    switch (status) {
      case OrderStatus.DeliveredByKitchen:
        return "undraw_review_re_kgg1.svg";
      case OrderStatus.Done:
        return "undraw_hamburger_-8-ge6.svg";
      case OrderStatus.DoneByKitchen:
        return "undraw_breakfast_psiw.svg";
      case OrderStatus.WaitInKitchen:
        return "undraw_cooking_lyxy.svg";
      case OrderStatus.WaitPayment:
        return "undraw_wallet_aym5.svg";
      case OrderStatus.Canceled:
        return "undraw_cancel_re_ctke.svg";
    }
  }
}
