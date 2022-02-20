import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

final baseUrl = 'http://localhost:3000';

final dioProvicer = Provider((_) => Dio(BaseOptions(
      baseUrl: baseUrl,
    )));
