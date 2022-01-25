import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/new_rest/new_ordertype_value.dart';
import 'package:manger/shared/service/add_to_rest_service.dart';

class CreateOrderTypeWidget extends HookConsumerWidget {
  const CreateOrderTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _value = useState(NewOrderTypeValue());
    return Column(
      children: [
        TextFormBox(
          header: "الاسم",
          placeholder: "الرئيسية",
          onChanged: (val) {
            _value.value.name = val;
          },
        ),
        TextFormBox(
          header: "رسالة طريقة الدفع",
          placeholder: "توجهة الى كاشير للدفع حاليا لاكمال الطلب رجاءا",
          onChanged: (val) {
            _value.value.paymentMsg = val;
          },
        ),
        TextFormBox(
          header: "رسالة توصيل الطلب",
          placeholder: "تم اعداد طلبك وسيتم توصيله من الويتر حاليا",
          onChanged: (val) {
            _value.value.deliverType = val;
          },
        ),
        //               TextFormBox(
        //   header: "رسالة توصيل الطلب",
        //   placeholder: "تم اعداد طلبك وسيتم توصيله من الويتر حاليا",
        //   onChanged: (val) {
        //     _value.value.selectKitchenVia = val;
        //   },
        // ),
        FilledButton(
            child: const Text("اضافة"),
            onPressed: () {
              ref.read(resturnatHomeControllerProvider).addToResturant(() => ref
                  .read(addResturantServiceProvider)
                  .addOrderType(_value.value));
            })
      ],
    );
  }
}
