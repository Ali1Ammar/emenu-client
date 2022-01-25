import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/new_rest/new_spot_vale.dart';
import 'package:manger/shared/service/add_to_rest_service.dart';

class CreateCusmoterSpotWidget extends HookConsumerWidget {
  const CreateCusmoterSpotWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _value = useState("");
    final _valueNum = useState(0);

    return Column(
      children: [
        TextFormBox(
          header: "بادئة الاسم",
          placeholder: "طاولة رقم",
          onChanged: (val) {
            _value.value = val;
          },
        ),
        TextFormBox(
          header: "العدد المطلوب",
          keyboardType: TextInputType.number,
          onChanged: (val) {
            _valueNum.value = int.parse(val);
          },
        ),
        FilledButton(
            child: const Text("اضافة"),
            onPressed: () async {
              final s = _value.value;
              ref
                  .read(resturnatHomeControllerProvider)
                  .addToResturant(() async {
                for (var i = 1; i <= _valueNum.value; i++) {
                  final newVal = NewSpotValue()..identifier = "$s $i";
                  await ref.read(addResturantServiceProvider).addSpot(newVal);
                }
              });
            })
      ],
    );
  }
}
