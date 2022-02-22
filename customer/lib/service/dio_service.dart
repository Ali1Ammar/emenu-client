import 'package:customer/entity/create_feedback.dart';
import 'package:customer/entity/create_order.dart';
import 'package:customer/entity/response_create_order.dart';
import 'package:customer/entity/resturant_realtion.dart';
import 'package:customer/service/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final dioService =
    Provider.autoDispose((_) => DioService(_.watch(dioProvicer)));

class DioService {
  final Dio dio;

  DioService(this.dio);
  Future<List<Resturant>> getResturants() async {
    return dio.get('/resturant').then((value) {
      return (value.data as List).map((e) {
        return Resturant.fromJson(e);
      }).toList();
    });
  }

  Future<RealtionResturantCustomer> getResutrnatRelation(
      int resturantId) async {
    return dio
        .get("/resturant/$resturantId")
        .then((value) => RealtionResturantCustomer.fromJson(value.data));
  }

  Future<List<Meal>> getMeal(int subCategory) async {
    return dio.get('/resturant/meal/$subCategory').then(
        (value) => (value.data as List).map((e) => Meal.fromJson(e)).toList());
  }

  Future<ResponseCreateOrder> order(CreateOrderDto order) async {
    return await dio
        .post("/order", data: order.toJson())
        .then((value) {
          return ResponseCreateOrder.fromJson(value.data);
        });
  }

  Future<CustomerFeedBack> sentReview(CreateFeedback createFeedback) async {
    return await dio
        .post("/done", data: createFeedback.toJson())
        .then((value) {
          return CustomerFeedBack.fromJson(value.data);
        });
  }
}
