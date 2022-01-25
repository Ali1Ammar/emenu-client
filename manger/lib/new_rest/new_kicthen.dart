import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/shared/service/add_to_rest_service.dart';

class CreateKitchenWidget extends HookConsumerWidget {
  const CreateKitchenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _value = useState("");
    return Column(
      children: [
        TextFormBox(
          header: "الاسم",
          placeholder: "المطبخ الرئيسي",
          onChanged: (val) {
            _value.value = val;
          },
        ),
        FilledButton(
            child: const Text("اضافة"),
            onPressed: () {
              ref.read(resturnatHomeControllerProvider).addToResturant(() => ref
                  .read(addResturantServiceProvider)
                  .addKitchen(_value.value));
            })
      ],
    );
  }
}
