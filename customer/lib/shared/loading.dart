import 'package:flutter/material.dart';

Future showLoading(BuildContext context, [String title = "تحميل"]) {
  return showDialog(
      context: context,
      builder: (context) {
        return const Material(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      });
}
