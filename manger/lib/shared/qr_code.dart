import 'dart:io';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_svg_generator/qr_svg_generator.dart';
import 'package:riverpod/riverpod.dart';

final qrCodeServiceProvider = Provider.autoDispose((_) => QrCodeService());

class QrCodeService {
  String generateLinkByData(String path, Map<String, dynamic> data) {
    return Uri.http("qr.r.c", path, data).toString();
  }

  String generateFullLinkToOrder(
      String resturantId, String orderTypeId, String spotId) {
    return generateLinkByData("link", {
      "resturantId": resturantId,
      "orderTypeId": orderTypeId,
      "spotId": spotId
    });
  }

  String convertToSvg(String data, String title) {
    final code = QrCode.fromData(data: data, errorCorrectLevel: 1);
    final qrSvgImageCode = generateQrSvgImage(
      qrCode: code,
      imageSizeInPx: 500,
      title: title,
    );
    return qrSvgImageCode.toString();
  }

  Future<File> saveSvgToFile(String svgString, String path) async {
    final file = File(path);
    await file.writeAsString(svgString);
    return file;
  }
}

class QrDisplatWidget extends StatelessWidget {
  final String data;

  const QrDisplatWidget({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return QrImageView(
      data: data,
      backgroundColor: Colors.white,
    );
  }
}
