import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/login/login_provider.dart';
import 'package:manger/login/user.dart';
import 'package:manger/order_track/order_card.dart';
import 'package:manger/order_track/order_track_controller.dart';
import 'package:manger/shared/widget/flyount_checkbox.dart';
import 'package:manger/shared/widget/header.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:shared/shared.dart';

//TODO
/*
 * make only one buttom apperase (next button)
 * make speical ui for each type (cachier , waiter , chef);
 * remove cacel and done order
 * make cache for done and remove 
 */

class OrderTrackPage extends HookConsumerWidget {
  final OrderTrack orderTrack;
  const OrderTrackPage({Key? key, required this.orderTrack}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderTrackControllerProvider(orderTrack));
    final cont = ref.watch(orderTrackControllerProvider(orderTrack).notifier);
    final permissons = ref.watch(loginProvider)!.user.permissons;
    final selectedQueryStatus = useState(<OrderStatus>[]);
    final queryStatusByPermissons = useMemoized(() => [
          if (permissons.contains(UserPermissions.ResturantAdmin)) ...[
            OrderStatus.DeliveredByKitchen,
            OrderStatus.Done,
            OrderStatus.DoneByKitchen,
            OrderStatus.WaitInKitchen,
            OrderStatus.WaitPayment
          ] else ...[
            if (permissons.contains(UserPermissions.Cacher))
              OrderStatus.WaitPayment,
            if (permissons.contains(UserPermissions.Kitchen))
              OrderStatus.DoneByKitchen,
            if (permissons.contains(UserPermissions.Waiter))
              OrderStatus.DeliveredByKitchen,
          ]
        ]);
    final selectedOrder = useMemoized(() {
      return state.map(
          init: (_) => null,
          loaded: (loaded) => loaded.orders
              .where((element) =>
                  selectedQueryStatus.value.contains(element.status))
              .toList());
    }, [selectedQueryStatus.value, state]);

    return ScaffoldPage(
        header: Header(
          title: orderTrack.title +
              (selectedOrder == null ? "" : selectedOrder.length.toString()),
          icons: [
            FluentCheckBox<OrderStatus>(
              onChangedSelected: (selected) {
                selectedQueryStatus.value = selected;
              },
              buttonBuilder: (context, openr) => Button(
                child: const Icon(FluentIcons.filter),
                onPressed: openr,
              ),
              items: queryStatusByPermissons
                  .map((e) => FluentCheckBoxItem<OrderStatus>(
                      Text(e.toArabic), false, e))
                  .toList(),
            )
          ],
        ),
        content: state.map(
            init: (_) => const CenterLoading(),
            loaded: (state) {
              Widget buildCard(context, i) {
                final item = selectedOrder![i];
                // final nextStatus = item.nextStatus();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OrderCard(
                    key: ValueKey(item.id),
                    order: item,
                    onPayed: item.isPayed
                        ? null
                        : () {
                            cont.clickPay(item);
                          },
                    onCancel: item.status == OrderStatus.Done
                        ? null
                        : () {
                            cont.clickChangeStatus(item, OrderStatus.Canceled);
                          },
                    onDeliverd: item.status == OrderStatus.DoneByKitchen
                        ? () {
                            cont.clickDeliverd(
                              item,
                            );
                          }
                        : null,
                    onDoneKitchen: item.status == OrderStatus.WaitInKitchen
                        ? () {
                            cont.clickChangeStatus(
                                item, OrderStatus.DoneByKitchen);
                          }
                        : null,
                  ),
                );
              }

              return MasonryGridView.builder(
                  gridDelegate:
                      const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 700),
                  itemCount: selectedOrder!.length,
                  itemBuilder: buildCard);
            }));
  }
}
