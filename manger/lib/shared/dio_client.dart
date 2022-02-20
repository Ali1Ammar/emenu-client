import 'package:dio/dio.dart';
import 'package:manger/login/login_provider.dart';
import 'package:manger/shared/network_error.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';


final dioProvicer = Provider((_) => Dio(BaseOptions(
      baseUrl: baseUrl,
    ))
      ..interceptors.add(AddToken(_.read)));

class AddToken extends Interceptor {
  final Reader read;

  AddToken(this.read);
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.type == DioErrorType.other) {
      if (err.message.contains("OS Error: Connection refused")) {
        throw CheckServer();
      }
    } else if (err.type == DioErrorType.response) {
      throw BadRequrest((err.response!.data as Map)['message'].toString());
      // print(err.message);
    }
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = read(loginProvider)?.accessToken;
    if (token != null) {
      options.headers['Authorization'] = "bearer $token";
    }
    handler.next(options);
  }

  // @override
  // void onResponse(Response response, ResponseInterceptorHandler handler) {
  //   // TODO: implement onResponse
  // }

}
