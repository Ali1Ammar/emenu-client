import 'package:fluent_ui/fluent_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/ordertype/new_ordertype.dart';
import 'package:manger/shared/grid_view_custom.dart';
import 'package:manger/shared/widget/header.dart';

import 'package:manger/ordertype/ordertype_card.dart';
import 'package:manger/ordertype/ordertype_mange_controller.dart';
import 'package:shared/shared.dart';

class OrderTypeMangePage extends ConsumerWidget {
  const OrderTypeMangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ordertypeMangerControllerProvider);
    final cont = ref.watch(ordertypeMangerControllerProvider.notifier);

    return ScaffoldPage(
      header: const Header(title: "ادارة طرق الطلب"),
      content: state.map<Widget>(
          init: (_) => _.isError ? const Text("error") : const CenterLoading(),
          loaded: (state) {
            if (state.editMode) {
              return ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (state.isRefreshing) const CenterLoading(),
                  CreateOrderTypeWidget(
                    onDone: (done) {
                      cont.addOrderType(done);
                    },
                    onCancel: () {
                      cont.setEditMode(false, null);
                    },
                  ),
                ],
              );
            }
            return GridViewCustomBuilder(
              itemCount: state.orderType.length + 1,
              itemBuilder: (context, i) {
                if (i == 0) {
                  return FilledButton(
                    onPressed: () {
                      ref
                          .read(ordertypeMangerControllerProvider.notifier)
                          .setEditMode(true, null);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("اضافة جديدة"),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(FluentIcons.add)
                      ],
                    ),
                  );
                } else {
                  final item = state.orderType[i - 1];
                  return OrderTypeCard(
                    item: item,
                    // onEdit: () {
                    //   ref
                    //       .read(ordertypeMangerControllerProvider.notifier)
                    //       .setEditMode(true, i - 1);
                    // },
                    onDelete: () async {
                      cont.onDelete(item);
                    },
                  );
                }
              },
            );
          }),
    );
  }
}
