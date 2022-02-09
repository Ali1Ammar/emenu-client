import 'package:flutter/widgets.dart';

class LabledWidget extends StatelessWidget {
  final String label;
  final String text;
  const LabledWidget({ Key? key,required this.label,required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Text("$label: "),
          Text(text)
        ],
      ),
    );
  }
}