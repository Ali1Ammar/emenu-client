import 'package:fluent_ui/fluent_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/order_track/order_card.dart';
import 'package:manger/order_track/order_track_controller.dart';
import 'package:manger/shared/widget/header.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
            loaded: (state) {
              Widget buildCard(context, i) {
                final item = state.orders[i];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OrderCard(
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
                  ),
                );
              }

              return MasonryGridView.builder(
                  gridDelegate:
                      const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 700),
                  itemCount: state.orders.length,
                  itemBuilder: buildCard);
            }));
  }
}
