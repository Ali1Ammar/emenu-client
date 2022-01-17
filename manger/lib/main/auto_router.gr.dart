// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'auto_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    SystemLoginPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SystemLoginPage());
    },
    HomeSystemPageRoute.name: (routeData) {
      final args = routeData.argsAs<HomeSystemPageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: HomeSystemPage(key: args.key, data: args.data));
    },
    HomeResturantMangePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeResturantMangePage());
    },
    NewResturantPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NewResturantPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomePageRoute.name, path: '/home-page'),
        RouteConfig(SystemLoginPageRoute.name, path: '/'),
        RouteConfig(HomeSystemPageRoute.name, path: '/home-system-page'),
        RouteConfig(HomeResturantMangePageRoute.name,
            path: '/home-resturant-mange-page'),
        RouteConfig(NewResturantPageRoute.name, path: '/new-resturant-page')
      ];
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [SystemLoginPage]
class SystemLoginPageRoute extends PageRouteInfo<void> {
  const SystemLoginPageRoute() : super(SystemLoginPageRoute.name, path: '/');

  static const String name = 'SystemLoginPageRoute';
}

/// generated route for
/// [HomeSystemPage]
class HomeSystemPageRoute extends PageRouteInfo<HomeSystemPageRouteArgs> {
  HomeSystemPageRoute({Key? key, required LoadedAllResturant data})
      : super(HomeSystemPageRoute.name,
            path: '/home-system-page',
            args: HomeSystemPageRouteArgs(key: key, data: data));

  static const String name = 'HomeSystemPageRoute';
}

class HomeSystemPageRouteArgs {
  const HomeSystemPageRouteArgs({this.key, required this.data});

  final Key? key;

  final LoadedAllResturant data;

  @override
  String toString() {
    return 'HomeSystemPageRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [HomeResturantMangePage]
class HomeResturantMangePageRoute extends PageRouteInfo<void> {
  const HomeResturantMangePageRoute()
      : super(HomeResturantMangePageRoute.name,
            path: '/home-resturant-mange-page');

  static const String name = 'HomeResturantMangePageRoute';
}

/// generated route for
/// [NewResturantPage]
class NewResturantPageRoute extends PageRouteInfo<void> {
  const NewResturantPageRoute()
      : super(NewResturantPageRoute.name, path: '/new-resturant-page');

  static const String name = 'NewResturantPageRoute';
}
