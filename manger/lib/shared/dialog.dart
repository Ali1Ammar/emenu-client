import 'package:dio/dio.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:manger/main/auto_router.dart';
import 'package:riverpod/riverpod.dart';

showErrorDialog(Object error, BuildContext context) {
  final String _error;
  if (error is DioError) {
    _error = error.error.toString();
  } else {
    _error = error.toString();
  }
  showDialog(
    context: context,
    builder: (context) {
      return ContentDialog(
        content: Text(_error),
        title: Text("خطا"),
        actions: [
          Button(
              child: Text('Ok'),
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
      return const ContentDialog(
        title: Text("جار تحميل"),
        content: ProgressRing(),
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
