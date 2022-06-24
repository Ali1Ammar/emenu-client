import 'package:fluent_ui/fluent_ui.dart';
import 'package:manger/shared/widget/labeled_widget.dart';
import 'package:shared/shared.dart';

class OrderTypeCard extends StatelessWidget {
  final OrderType item;
  // final VoidCallback onEdit;
  final VoidCallback onDelete;
  const OrderTypeCard(
      {Key? key,
      required this.item,
      // required this.onEdit,
      required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final typography = FluentTheme.of(context).typography;

    Widget labeld(String title, String txt) => Column(
          children: [
            Text(
              title,
              style: typography.subtitle,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(txt),
            ),
            const Divider()
          ],
        );

    return Card(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
          alignment: AlignmentDirectional.topStart,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.name, style: typography.title),
              labeld("نوع التوصيل", item.deliverType.ar),
              labeld("رساله التوصيل", item.deliverMsg),
              labeld("نوع الدفع", item.paymentType.ar),
              labeld("رساله الدفع", item.paymentMsg)
            ],
          ),
              ),
            ),
        ));
  }
}
