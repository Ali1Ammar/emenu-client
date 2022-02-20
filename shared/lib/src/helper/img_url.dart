import 'package:shared/src/helper/const.dart';

String getImageUrl(String img) {
  if(img.startsWith("http")){return img;}
  return "$baseUrl/$img";
}
