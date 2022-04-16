import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/shared/service/resturnat_service.dart';
import 'package:manger/shared/widget/header.dart';
import 'package:manger/user_feedback/feedback_card.dart';
import 'package:shared/shared.dart';

class CustomerFeedbackPage extends HookConsumerWidget {
  const CustomerFeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataFuture = useMemoized(() {
      return ref.read(resturantServiceProvider).getCustomerFeedback();
    });
    final dataSnap = useFuture(dataFuture);
    Widget content;
    if (dataSnap.hasError) {
      content = Text(dataSnap.error.toString());
    } else if (dataSnap.connectionState == ConnectionState.waiting) {
      content = const CenterLoading();
    } else {
      content = GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5 , mainAxisSpacing: 8,crossAxisSpacing: 8),
        itemCount: dataSnap.data!.length,
        itemBuilder: (context, index) {
          return CustomerFeedbackCard(
            item: dataSnap.data![index],
          );
        },
      );
    }
    return ScaffoldPage(
        header: const Header(title: "ادارة الوجبات"), content: content);
  }
}
