// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_list_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $watchListRoute,
    ];

RouteBase get $watchListRoute => GoRouteData.$route(
      path: '/watch-list',
      factory: $WatchListRouteExtension._fromState,
    );

extension $WatchListRouteExtension on WatchListRoute {
  static WatchListRoute _fromState(GoRouterState state) => WatchListRoute();

  String get location => GoRouteData.$location(
        '/watch-list',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
