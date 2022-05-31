import 'package:customer/widget/big_button.dart';
import 'package:customer/widget/qr_code_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared/shared.dart';

class SelectStartWidget extends StatelessWidget {
  final void Function(String qrCode) onReadQrCode;
  final void Function(int customerSpotCode) onCompleteGetSpotId;
  final void Function() onManualEnter;

  const SelectStartWidget(
      {Key? key,
      required this.onCompleteGetSpotId,
      required this.onManualEnter, required this.onReadQrCode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text("كيف تريد اكمال اجراءات الطلب")),
        ),
        BigButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return QRScannerWidget(
                  onReadQrCode: (String qrCode) {
                    Navigator.pop(context);
                    onReadQrCode(qrCode);
                  },
                );
              }));
            },
            child: const Text("قراءة الكود QRCODE")),
        BigButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) =>
                      GetNumberDialog(onComplete: onCompleteGetSpotId));
            },
            child: const Text("ادحال رقم طاولة")),
        BigButton(onPressed: onManualEnter, child: const Text("ادخال يدوي")),
      ],
    );
  }
}

class GetNumberDialog extends HookWidget {
  const GetNumberDialog({
    Key? key,
    required this.onComplete,
  }) : super(key: key);

  final void Function(int number) onComplete;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return AlertDialog(
        title: const Text("قم بإدخال رقم المكان الخاص بك"),
        content: TextField(
          controller: controller,
          autofocus: true,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("إلغاء"),
          ),
          TextButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                onComplete(int.tryParse(controller.text)!);
              }
              Navigator.pop(context);
            },
            child: const Text("تأكيد"),
          ),
        ]);
  }
}
