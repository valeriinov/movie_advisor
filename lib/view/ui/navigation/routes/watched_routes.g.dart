// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watched_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$watchedRoute];

RouteBase get $watchedRoute => GoRouteData.$route(
  path: '/watched',

  factory: $WatchedRouteExtension._fromState,
);

extension $WatchedRouteExtension on WatchedRoute {
  static WatchedRoute _fromState(GoRouterState state) => WatchedRoute();

  String get location => GoRouteData.$location('/watched');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
