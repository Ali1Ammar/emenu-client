import 'package:customer/main/auto_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

String normlizeError(Object error) {
  final String _error;
  if (error is DioError) {
    _error = error.error.toString();
  } else {
    _error = error.toString();
  }
  return _error;
}

showErrorDialog(Object error, BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(normlizeError(error)),
        title: const Text("خطا"),
        actions: [
          TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      );
    },
  );
}

showLoading(Future val, BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return const AlertDialog(
        title: Text("جار تحميل"),
        content: CircularProgressIndicator(),
      );
    },
  );
  val.whenComplete(() => Navigator.of(context).pop());
}

showLoadingViaRead(Future val, Reader read) {
  showLoading(val, read(autoRouteProvider).navigatorKey.currentState!.context);
}

showErrorDialogViaRead(Object error, Reader read) {
  showErrorDialog(
      error, read(autoRouteProvider).navigatorKey.currentState!.context);
}
