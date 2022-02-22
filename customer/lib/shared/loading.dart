import 'package:flutter/material.dart';

Future showLoading(BuildContext context, [String title = "تحميل"]) {
  return showDialog(
      context: context,
      builder: (context) {
        return Material(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      });
}
