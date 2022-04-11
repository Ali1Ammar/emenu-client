import 'package:dio/dio.dart';
import 'package:manger/login/user.dart';
import 'package:manger/shared/dio_client.dart';
import 'package:riverpod/riverpod.dart';

final loginServiceProvider =
    Provider.autoDispose((_) => LoginService(_.watch(dioProvicerWithToken)));

class LoginService {
  final Dio dio;

  LoginService(this.dio);
  Future<ReturnLoginDto> login(String username, String password) async {
    final res = await dio
        .post('/login', data: {"username": username, "password": password});
    return ReturnLoginDto((res.data as Map)['access_token'],
        User.fromJson((res.data as Map)['user']), password == "admin");
  }

  Future<ReturnLoginDto> refresh() async {
    final res = await dio.post(
      '/recreate',
    );
    return ReturnLoginDto((res.data as Map)['access_token'],
        User.fromJson((res.data as Map)['user']), false);
  }
}

class ReturnLoginDto {
  final String accessToken;
  final User user;
  final bool isLogedUsingDefualtValue;
  ReturnLoginDto(this.accessToken, this.user, this.isLogedUsingDefualtValue);
}
