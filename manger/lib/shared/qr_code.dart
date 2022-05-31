import 'dart:io';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_svg_generator/qr_svg_generator.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final qrCodeServiceProvider = Provider.autoDispose((_) => QrCodeService());

class QrCodeService {
  String generateFullLinkToOrder(int spotId) {
    return QrCodeData(spotId).toUri().toString();
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
