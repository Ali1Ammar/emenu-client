import 'package:fluent_ui/fluent_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/order_track/order_card.dart';
import 'package:manger/order_track/order_track_controller.dart';
import 'package:manger/shared/widget/header.dart';

import 'package:shared/shared.dart';

class OrderTrackPage extends ConsumerWidget {
  final OrderTrack orderTrack;
  const OrderTrackPage({Key? key, required this.orderTrack}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderTrackControllerProvider(orderTrack));
    final cont = ref.watch(orderTrackControllerProvider(orderTrack).notifier);

    return ScaffoldPage(
        header: Header(
          title: orderTrack.title +
              state.map(
                  init: (_) => "", loaded: (_) => _.orders.length.toString()),
        ),
        content: state.map(
            init: (_) => const CenterLoading(),
            loaded: (state) => GridView.builder(
                itemCount: state.orders.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
crossAxisSpacing: 18,
                    maxCrossAxisExtent: 400  ),
                itemBuilder: (context, i) {
                  final item = state.orders[i];
                  return OrderCard(
                    order: item,
                    onPayed: () {
                      cont.clickPay(item);
                    },
                    onCancel: () {
                      cont.clickChangeStatus(item, OrderStatus.Canceled);
                    },
                    onDeliverd: () {
                      cont.clickChangeStatus(
                          item, OrderStatus.DeliveredByKitchen);
                    },
                    onDoneKitchen: () {
                      cont.clickChangeStatus(item, OrderStatus.DoneByKitchen);
                    },
                  );
                })));
  }
}
