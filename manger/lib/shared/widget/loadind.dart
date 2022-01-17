
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterLoading extends StatelessWidget {
  const CenterLoading({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
child: CircularProgressIndicator() ,      
    );
  }
}