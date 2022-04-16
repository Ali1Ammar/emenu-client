import 'package:fluent_ui/fluent_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared/shared.dart';

class CustomerFeedbackCard extends StatelessWidget {
  final CustomerFeedBack item;
  const CustomerFeedbackCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = FluentTheme.of(context).typography.subtitle;
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(item.desc, style: textStyle),
          ),
          ...item.type.map((e) => Text(e.toAr, style: textStyle)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                for (var i = 0; i < item.rate; i++)
                  FaIcon(FontAwesomeIcons.star, color: Colors.yellow),
                for (var i = 0; i < 5 - item.rate; i++)
                  const FaIcon(FontAwesomeIcons.star,
                      color: Color.fromARGB(255, 206, 185, 164)),
                Expanded(
                    child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text("id ${item.orderId}")))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
