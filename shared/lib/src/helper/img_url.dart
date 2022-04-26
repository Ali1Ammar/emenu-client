import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/src/helper/const.dart';
import 'package:shared/src/helper/dio_client.dart';

String getImageUrl(String img,Reader read) {
  if(img.startsWith("http")){return img;} 
  final baseUrl = read(baseUrlProvider);
  return "$baseUrl/$img";
}


String getImageUrlContext(String img,BuildContext context) {
  if(img.startsWith("http")){return img;} 
  final baseUrl = ProviderScope.containerOf(context).read(baseUrlProvider);
  return "$baseUrl/$img";
}
