import 'package:shared/src/helper/const.dart';

class QrCodeData {
  // final int resturantId;
  // final int orderTypeId;
  final int spotId;

  QrCodeData(
    // this.resturantId, this.orderTypeId,
     this.spotId);

  QrCodeData.fromMap(Map<String, dynamic> map)
       : 
      //resturantId = map["resturantId"],
        // orderTypeId = map["orderTypeId"],
        spotId = int.parse(map["spotId"]);

  factory QrCodeData.fromUri(Uri uri) =>
      QrCodeData.fromMap(uri.queryParameters);
  Uri toUri()  {
    return Uri.http(
        domain,  qrCodePath,  toMap());
  }

  Map<String, dynamic> toMap() {
    return {
      // "resturantId": resturantId,
      // "orderTypeId": orderTypeId,
      "spotId": spotId.toString()
    };
  }
}
