

import 'package:flutter/material.dart';

class LabeldText extends StatelessWidget {
  final String title;
  final String text;
  final TextStyle? style;
  const LabeldText({ Key? key,required this.title,required this.text, this.style }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: style),
        Text(text,style: style,)
      ],
    );
  }
}