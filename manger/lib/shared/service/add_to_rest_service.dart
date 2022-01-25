import 'package:dio/dio.dart';
import 'package:manger/login/user.dart';
import 'package:manger/new_rest/meal/new_meal_value.dart';
import 'package:manger/new_rest/new_category_value.dart';
import 'package:manger/new_rest/new_ordertype_value.dart';
import 'package:manger/new_rest/new_spot_vale.dart';
import 'package:manger/shared/dio_client.dart';
import 'package:riverpod/riverpod.dart';

final addResturantServiceProvider =
    Provider.autoDispose((_) => AddResturantService(_.watch(dioProvicer)));

class AddResturantService {
  final Dio dio;

  AddResturantService(this.dio);

  Future<void> addCategorty(NewCategoryValue dto) async {
    final json = dto.toJson();
    json['img'] = await MultipartFile.fromFile(dto.img!);
    await dio.post('resturantadmin/main-category',
        data: FormData.fromMap(json));
  }

  Future<void> addMeal(NewMealValue dto) async {
    final json = dto.toJson();
    json['img'] = await MultipartFile.fromFile(dto.img!);
    await dio.post('resturantadmin/meal', data: FormData.fromMap(json));
  }

  Future<void> addOrderType(NewOrderTypeValue dto) async {
    final json = dto.toJson();
    await dio.post('resturantadmin/order-type', data: json);
  }

  Future<void> addSpot(NewSpotValue dto) async {
    final json = dto.toJson();
    await dio.post('resturantadmin/customer-spot', data: json);
  }

  Future<void> addKitchen(String name) async {
    // final json = dto.toJson();
    // json['img'] = await MultipartFile.fromFile(dto.img!);
    await dio.post('resturantadmin/kitchen', data: {"name": name});
  }
}

class ReturnServiceDto {
  final String accessToken;
  final User user;
  ReturnServiceDto(this.accessToken, this.user);
}
