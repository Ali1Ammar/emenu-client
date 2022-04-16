
import 'package:flutter/widgets.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("لا يوجد بيانات حاليا");
  }
}