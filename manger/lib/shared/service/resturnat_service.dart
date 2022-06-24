import 'package:dio/dio.dart';
import 'package:manger/login/user.dart';
import 'package:manger/new_rest/new_rest_value.dart';
import 'package:manger/shared/dio_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final resturantServiceProvider = Provider.autoDispose(
    (_) => ResturantService(_.watch(dioProvicerWithToken)));

class ResturantService {
  final Dio dio;

  ResturantService(this.dio);
  Future<List<Resturant>> getAllResturantForAdmins() async {
    final res = await dio.get(
      '/admin/resturant',
    );
    return (res.data as List)
        .map((e) => Resturant.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<RealtionResturant> getLinkedResturant() async {
    final res = await dio.get(
      '/resturantadmin',
    );
    return RealtionResturant.fromJson(res.data as Map<String, dynamic>);
  }

  Future<List<Meal>> getLinkedResturantMeal() async {
    final res = await dio.get(
      '/resturantadmin/meal',
    );
    return (res.data as List).map((e) => Meal.fromJson(e)).toList();
  }

  Future<List<User>> getLinkedResturantStaff() async {
    final res = await dio.get(
      '/resturantadmin/staff',
    );
    return (res.data as List).map((e) => User.fromJson(e)).toList();
  }

  Future<RealtionResturant> getResturantViaId(int id) async {
    final res = await dio.get(
      '/admin/resturant/$id',
    );
    return RealtionResturant.fromJson(res.data as Map<String, dynamic>);
  }

  Future<Resturant> createResturant(NewResturantDto dto) async {
    final json = dto.toJson();
    json['img'] = await MultipartFile.fromFile(dto.resturant.img);
    final res =
        await dio.post('/admin/resturant', data: FormData.fromMap(json));
    return Resturant.fromJson(res.data as Map<String, dynamic>);
  }

  Future<void> changeActiveByAdmin(int id, bool val) async {
    await dio.post('/admin/resturant/$id/active/$val');
  }

  Future<void> changeActiveViaCurrent(bool val) async {
    await dio.post('/resturantadmin/active/$val');
  }

  Future<void> changeMealActive(int id, bool val) async {
    await dio.post('/resturantadmin/meal/$id/active/$val');
  }

  Future<List<CustomerFeedBack>> getCustomerFeedback() async {
    final res = await dio.get(
      '/resturantadmin/feedback',
    );
    return (res.data as List)
        .map((e) => CustomerFeedBack.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}

class ReturnServiceDto {
  final String accessToken;
  final User user;
  ReturnServiceDto(this.accessToken, this.user);
}
