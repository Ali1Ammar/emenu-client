import 'package:manger/shared/dio_client.dart';

String getImageUrl(String img) {
  if(img.startsWith("http")){return img;}
  return "$baseUrl/$img";
}
