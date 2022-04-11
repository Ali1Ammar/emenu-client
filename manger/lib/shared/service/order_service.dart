import 'package:dio/dio.dart';
import 'package:manger/shared/dio_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final orderServiceProvider =
    Provider.autoDispose((_) => OrderService(_.watch(dioProvicerWithToken)));

class OrderService {
  final Dio dio;

  OrderService(this.dio);

  Future<List<Order>> getLinkedKitchenDoneOrder(int id) async {
    final res = await dio.get(
      '/order/admin/kitchen/$id/current',
    );
    return (res.data as List).map((e) => Order.fromJson(e)).toList();
  }

  Future<List<Order>> getLinkedDoneOrder() async {
    final res = await dio.get(
      '/order/admin/current',
    );
    return (res.data as List).map((e) => Order.fromJson(e)).toList();
  }

  Future<void> statusUpdate(int orderId, OrderStatus status) async {
    await dio.post('/order/admin/status/$orderId', data: {"status": status.name});
  }
    Future<void> payed(int orderId,) async {
    await dio.post('/order/admin/pay/$orderId');
  }
}
