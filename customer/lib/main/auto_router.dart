import 'package:auto_route/auto_route.dart';
import 'package:customer/select_order/select_order_controller.dart';
import 'package:customer/select_order/select_order_page.dart';
import 'package:customer/select_resturnat/select_resturant_page.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';


part 'auto_router.gr.dart';

final autoRouteProvider =
    Provider<AppRouter>((_) => throw UnimplementedError());

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
AutoRoute(page: SelectResturantPage,initial: true),
AutoRoute(page: SelectOrderPage)


  ],
)
class AppRouter extends _$AppRouter {}
