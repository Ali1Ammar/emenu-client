import 'package:customer/widget/big_button.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class SelectStartWidget extends StatelessWidget {
  // final void Function(QrCodeData qrCode) onReadQrCode;
  final void Function(int customerSpotCode) onCompleteGetSpotId;
  final void Function() onManualEnter;

  const SelectStartWidget(
      {Key? key,
      required this.onCompleteGetSpotId,
      required this.onManualEnter})
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
              final url = Uri.parse(
                  "http://qr.r.c/link?resturantId=1&orderTypeId=1&spotId=2");

              onCompleteGetSpotId(QrCodeData.fromUri(url).spotId);
            },
            child: const Text("قراءة الكود QRCODE")),
        BigButton(
            onPressed: () {
              onCompleteGetSpotId(1);
            },
            child: const Text("ادحال رقم طاولة")),
        BigButton(onPressed: onManualEnter, child: const Text("ادخال يدوي")),
      ],
    );
  }
}
