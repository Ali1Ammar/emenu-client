import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/src/helper/dio_client.dart';

class ChangeUrlWidget extends HookConsumerWidget {
  const ChangeUrlWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController =
        useTextEditingController(text: ref.read(baseUrlProvider));
    final errorState = useState("");
    return Column(
      children: [
        if (errorState.value.isNotEmpty) Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(errorState.value),
        ),
        TextField(
          controller: textController,
        ),
        TextButton.icon(
            onPressed: () {
              final url = Uri.tryParse(textController.text);
              if (url == null) {
                errorState.value = "Invalid URL";
              } else {
                ref.read(baseUrlProvider.notifier).state = url.toString();
                errorState.value = "";
              }
            },
            icon: const Icon(Icons.start),
            label: const Text("تغيير"))
      ],
    );
  }
}
