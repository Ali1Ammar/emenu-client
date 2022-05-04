import 'package:fluent_ui/fluent_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/customer_spot/customer_spot_card.dart';
import 'package:manger/customer_spot/customer_spot_controller.dart';
import 'package:manger/shared/open_file_manger.dart';
import 'package:manger/shared/widget/header.dart';
import 'package:shared/shared.dart';

class CustomerSpotPage extends HookConsumerWidget {
  const CustomerSpotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerSpotControllerProvider);
    final controller = ref.watch(customerSpotControllerProvider.notifier);
    return state.map<Widget>(
        init: (_) => Text(_.toString()),
        loaded: (loaded) {
          final data = loaded.data;
          Widget content = GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, mainAxisSpacing: 8, crossAxisSpacing: 8),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return CustomerSpotCard(
                item: item.spot,
                qrCode: item.qrCode,
                onSave: () async {
                  await controller.saveItem(item);
                },
                onDelete: () {},
              );
            },
          );

          return ScaffoldPage(
              header: Header(title: "الطاولات", icons: [
                if (loaded.savingDirection != null)
                  Row(
                    children: [
                      Button(
                          onPressed: () {
                            openFileManger(loaded.savingDirection!);
                          },
                          child: Text(loaded.savingDirection!))
                    ],
                  ),
                if (loaded.isLoading)
                  const CenterLoading()
                else
                  IconButton(
                      icon: const Icon(FluentIcons.save_all, size: 18),
                      onPressed: () {
                        controller.saveAllItems();
                      }),
              ]),
              content: content);
        });
  }
}
