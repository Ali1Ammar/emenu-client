import 'package:auto_route/auto_route.dart';
import 'package:customer/entity/order_select_data.dart';
import 'package:customer/entity/response_create_order.dart';
import 'package:customer/order_track/order_track_page.dart';
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
AutoRoute(page: SelectOrderPage),
AutoRoute(page: OrderTrackPage)


  ],
)
class AppRouter extends _$AppRouter {}
