import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/customer_spot/customer_spot_card.dart';
import 'package:manger/customer_spot/customer_spot_controller.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/shared/qr_code.dart';
import 'package:manger/shared/widget/header.dart';
import 'package:shared/shared.dart';

class CustomerSpotPage extends HookConsumerWidget {
  const CustomerSpotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataSnap = ref.watch(currentLinkedResturant);
    final qrService = ref.watch(qrCodeServiceProvider);
    final controller = ref.watch(customerSpotControllerProvider);
    final savingData = useState(const AsyncValue<String?>.data(null));
    Widget content = dataSnap.when(
        data: (data) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, mainAxisSpacing: 8, crossAxisSpacing: 8),
            itemCount: dataSnap.value!.customerSpot.length,
            itemBuilder: (context, index) {
              final item = dataSnap.value!.customerSpot[index];
              return CustomerSpotCard(
                item: item,
                qrCode: qrService.generateCustomerSpotLink(item.id.toString()),
                onSave: () async {
                  savingData.value = const AsyncValue.loading();
                  final done = await controller.saveItem(item);
                  savingData.value = AsyncValue.data(done);
                },
                onDelete: () {},
              );
            },
          );
        },
        error: (err, _) => Text(err.toString()),
        loading: () => const CenterLoading());

    return ScaffoldPage(
        header: Header(title: "الطاولات", icons: [
          savingData.value.whenOrNull<Widget?>(
                  loading: () => const CenterLoading(),
                  data: (data) {
                    if (data == null) return null;
                    return Row(
                      children: [Text(data)],
                    );
                  }) ??
              const SizedBox(),
          IconButton(
              icon: const Icon(FluentIcons.save_all, size: 18),
              onPressed: () async {
                savingData.value = const AsyncValue.loading();

                final done =
                    await controller.saveAllItems(dataSnap.value!.customerSpot);
                savingData.value = AsyncValue.data(done);
              }),
        ]),
        content: content);
  }
}
