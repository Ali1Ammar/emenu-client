import 'package:fluent_ui/fluent_ui.dart';

class LabledWidget extends StatelessWidget {
  final String label;
  final String text;
  const LabledWidget({ Key? key,required this.label,required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final style = FluentTheme.of(context).typography.subtitle;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Text("$label: " , style: style ),
          Text(text, style: style)
        ],
      ),
    );
  }
}