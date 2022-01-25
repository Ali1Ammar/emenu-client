import 'package:auto_route/auto_route.dart';
import 'package:manger/home/home_page.dart';
import 'package:manger/home/resturant/home_resturant_mange.dart';
import 'package:manger/home/home_state.dart';
import 'package:manger/home/home_system_mange.dart';
import 'package:manger/login/system_login_page.dart';
import 'package:manger/new_rest/new_rest_page.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

part 'auto_router.gr.dart';

final autoRouteProvider =
    Provider<AppRouter>((_) => throw UnimplementedError());

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage),
    AutoRoute(page: SystemLoginPage, initial: true),
    AutoRoute(
      page: HomeSystemPage,
    ),
    AutoRoute(
      page: HomeResturantMangePage,
    ),
    AutoRoute(page: NewResturantPage),
  ],
)
class AppRouter extends _$AppRouter {}
