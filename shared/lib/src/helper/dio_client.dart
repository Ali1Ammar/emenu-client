import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

final baseUrlProvider = StateProvider((_) => 'http://192.168.0.100:3000');

final dioProvicer = Provider((_) => Dio(BaseOptions(
      baseUrl: _.watch(baseUrlProvider),
    )));
