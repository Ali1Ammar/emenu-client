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
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SelectResturantPageRoute.name, path: '/'),
        RouteConfig(SelectOrderPageRoute.name, path: '/select-order-page')
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
