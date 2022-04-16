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
          child: HomeSystemPage(key: args.key, resturants: args.resturants));
    },
    HomeResturantMangePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeResturantMangePage());
    },
    NewResturantPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NewResturantPage());
    },
    MealMangePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MealMangePage());
    },
    OrderTrackPageRoute.name: (routeData) {
      final args = routeData.argsAs<OrderTrackPageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: OrderTrackPage(key: args.key, orderTrack: args.orderTrack));
    },
    CustomerFeedbackPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CustomerFeedbackPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomePageRoute.name, path: '/home-page'),
        RouteConfig(SystemLoginPageRoute.name, path: '/'),
        RouteConfig(HomeSystemPageRoute.name, path: '/home-system-page'),
        RouteConfig(HomeResturantMangePageRoute.name,
            path: '/home-resturant-mange-page'),
        RouteConfig(NewResturantPageRoute.name, path: '/new-resturant-page'),
        RouteConfig(MealMangePageRoute.name, path: '/meal-mange-page'),
        RouteConfig(OrderTrackPageRoute.name, path: '/order-track-page'),
        RouteConfig(CustomerFeedbackPageRoute.name,
            path: '/customer-feedback-page')
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
  HomeSystemPageRoute({Key? key, required List<Resturant> resturants})
      : super(HomeSystemPageRoute.name,
            path: '/home-system-page',
            args: HomeSystemPageRouteArgs(key: key, resturants: resturants));

  static const String name = 'HomeSystemPageRoute';
}

class HomeSystemPageRouteArgs {
  const HomeSystemPageRouteArgs({this.key, required this.resturants});

  final Key? key;

  final List<Resturant> resturants;

  @override
  String toString() {
    return 'HomeSystemPageRouteArgs{key: $key, resturants: $resturants}';
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

/// generated route for
/// [MealMangePage]
class MealMangePageRoute extends PageRouteInfo<void> {
  const MealMangePageRoute()
      : super(MealMangePageRoute.name, path: '/meal-mange-page');

  static const String name = 'MealMangePageRoute';
}

/// generated route for
/// [OrderTrackPage]
class OrderTrackPageRoute extends PageRouteInfo<OrderTrackPageRouteArgs> {
  OrderTrackPageRoute({Key? key, required OrderTrack orderTrack})
      : super(OrderTrackPageRoute.name,
            path: '/order-track-page',
            args: OrderTrackPageRouteArgs(key: key, orderTrack: orderTrack));

  static const String name = 'OrderTrackPageRoute';
}

class OrderTrackPageRouteArgs {
  const OrderTrackPageRouteArgs({this.key, required this.orderTrack});

  final Key? key;

  final OrderTrack orderTrack;

  @override
  String toString() {
    return 'OrderTrackPageRouteArgs{key: $key, orderTrack: $orderTrack}';
  }
}

/// generated route for
/// [CustomerFeedbackPage]
class CustomerFeedbackPageRoute extends PageRouteInfo<void> {
  const CustomerFeedbackPageRoute()
      : super(CustomerFeedbackPageRoute.name, path: '/customer-feedback-page');

  static const String name = 'CustomerFeedbackPageRoute';
}
