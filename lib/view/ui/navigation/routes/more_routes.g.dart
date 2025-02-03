// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'more_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $moreRoute,
    ];

RouteBase get $moreRoute => GoRouteData.$route(
      path: '/more',
      factory: $MoreRouteExtension._fromState,
    );

extension $MoreRouteExtension on MoreRoute {
  static MoreRoute _fromState(GoRouterState state) => MoreRoute();

  String get location => GoRouteData.$location(
        '/more',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
