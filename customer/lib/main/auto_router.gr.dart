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
    SelectResturantPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SelectResturantPage());
    },
    SelectOrderPageRoute.name: (routeData) {
      final args = routeData.argsAs<SelectOrderPageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: SelectOrderPage(key: args.key, param: args.param));
    },
    OrderTrackPageRoute.name: (routeData) {
      final args = routeData.argsAs<OrderTrackPageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: OrderTrackPage(
              key: args.key, responseCreateOrder: args.responseCreateOrder));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SelectResturantPageRoute.name, path: '/'),
        RouteConfig(SelectOrderPageRoute.name, path: '/select-order-page'),
        RouteConfig(OrderTrackPageRoute.name, path: '/order-track-page')
      ];
}

/// generated route for
/// [SelectResturantPage]
class SelectResturantPageRoute extends PageRouteInfo<void> {
  const SelectResturantPageRoute()
      : super(SelectResturantPageRoute.name, path: '/');

  static const String name = 'SelectResturantPageRoute';
}

/// generated route for
/// [SelectOrderPage]
class SelectOrderPageRoute extends PageRouteInfo<SelectOrderPageRouteArgs> {
  SelectOrderPageRoute({Key? key, required SelectOrderParam param})
      : super(SelectOrderPageRoute.name,
            path: '/select-order-page',
            args: SelectOrderPageRouteArgs(key: key, param: param));

  static const String name = 'SelectOrderPageRoute';
}

class SelectOrderPageRouteArgs {
  const SelectOrderPageRouteArgs({this.key, required this.param});

  final Key? key;

  final SelectOrderParam param;

  @override
  String toString() {
    return 'SelectOrderPageRouteArgs{key: $key, param: $param}';
  }
}

/// generated route for
/// [OrderTrackPage]
class OrderTrackPageRoute extends PageRouteInfo<OrderTrackPageRouteArgs> {
  OrderTrackPageRoute(
      {Key? key, required ResponseCreateOrder responseCreateOrder})
      : super(OrderTrackPageRoute.name,
            path: '/order-track-page',
            args: OrderTrackPageRouteArgs(
                key: key, responseCreateOrder: responseCreateOrder));

  static const String name = 'OrderTrackPageRoute';
}

class OrderTrackPageRouteArgs {
  const OrderTrackPageRouteArgs({this.key, required this.responseCreateOrder});

  final Key? key;

  final ResponseCreateOrder responseCreateOrder;

  @override
  String toString() {
    return 'OrderTrackPageRouteArgs{key: $key, responseCreateOrder: $responseCreateOrder}';
  }
}
