import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/new_rest/new_ordertype_value.dart';
import 'package:manger/shared/service/add_to_rest_service.dart';
import 'package:manger/shared/widget/state_combobox.dart';
import 'package:shared/shared.dart';

class CreateOrderTypeWidget extends HookConsumerWidget {
  final void Function(NewOrderTypeValue) onDone;
  final VoidCallback onCancel;
  const CreateOrderTypeWidget(
      {Key? key, required this.onDone, required this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _value = useState(NewOrderTypeValue());
    return Center(
      child: Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(
          children: [
            const Text("اضافة طريقة طلب جديده"),
            TextFormBox(
              header: "الاسم",
              initialValue: _value.value.name,
              onChanged: (val) {
                _value.value.name = val;
              },
            ),
            TextFormBox(
              header: "رسالة طريقة الدفع",
              initialValue: _value.value.paymentMsg,
              onChanged: (val) {
                _value.value.paymentMsg = val;
              },
            ),
            TextFormBox(
              header: "رسالة توصيل الطلب",
              initialValue: _value.value.deliverMsg,
              onChanged: (val) {
                _value.value.deliverMsg = val;
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ComboboxStateless<PaymentType>(
                  initvalue: _value.value.paymentType,
                  // value: kitchenSelect.value,
                  onChanged: (val) {
                    // kitchenSelect.value = val!;
                    _value.value.paymentType = val;
                  },
                  items: PaymentType.values
                      .map((e) => ComboboxItem(value: e, child: Text(e.ar)))
                      .toList()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ComboboxStateless<DeliverType>(
                  initvalue: _value.value.deliverType,
                  // value: kitchenSelect.value,
                  onChanged: (val) {
                    _value.value.deliverType = val;
                  },
                  items: DeliverType.values
                      .map((e) => ComboboxItem(value: e, child: Text(e.ar)))
                      .toList()),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                      child: const Text("اضافة"),
                      onPressed: () {
                        onDone(_value.value);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                      child: const Text("الغاء"),
                      onPressed: () {
                        onCancel();
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
