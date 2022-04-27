import 'package:fluent_ui/fluent_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared/shared.dart';

class CustomerFeedbackCard extends StatelessWidget {
  final CustomerFeedBack item;
  const CustomerFeedbackCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = FluentTheme.of(context).typography.subtitle;
    final bold =  textStyle?.copyWith( fontWeight: FontWeight.bold  );
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ملاحضات الزبون ", style: bold),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(item.desc, style: textStyle),
            ),
            Text("اسباب التقييم ", style: bold),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: item.type.map((e) => Text(e.toAr, style: textStyle)).toList() ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Text("التقييم  ", style: bold) ,
                  for (var i = 0; i < item.rate; i++)
                    FaIcon(FontAwesomeIcons.star, color: Colors.yellow.darker),
                  for (var i = 0; i < 5 - item.rate; i++)
                    const FaIcon(FontAwesomeIcons.star,
                        color: Color.fromARGB(255, 209, 203, 170)),
                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text("id ${item.orderId}"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
