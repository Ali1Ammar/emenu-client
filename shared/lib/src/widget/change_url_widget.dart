import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/src/helper/dio_client.dart';


class ChangeUrlWidget extends HookConsumerWidget {
  final Widget Function(TextEditingController) textFieldBuilder;
  final Widget Function(VoidCallback) okButtonBuilder;
  const ChangeUrlWidget(
      {Key? key, required this.textFieldBuilder, required this.okButtonBuilder})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController =
        useTextEditingController(text: ref.read(baseUrlProvider));
    final errorState = useState("");
    return Column(
      children: [
        if (errorState.value.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(errorState.value),
          ),
        textFieldBuilder(textController),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: okButtonBuilder(() {
            final url = Uri.tryParse(textController.text);
            if (url == null) {
              errorState.value = "Invalid URL";
            } else {
              ref.read(baseUrlProvider.notifier).state = url.toString();
              errorState.value = "";
              Navigator.pop(context);

            }
          }),
        )
      ],
    );
  }
}
