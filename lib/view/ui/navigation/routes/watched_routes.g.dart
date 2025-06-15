// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watched_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$watchedRoute, $watchedFilterRoute];

RouteBase get $watchedRoute =>
    GoRouteData.$route(path: '/watched', factory: _$WatchedRoute._fromState);

mixin _$WatchedRoute on GoRouteData {
  static WatchedRoute _fromState(GoRouterState state) => WatchedRoute();

  @override
  String get location => GoRouteData.$location('/watched');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $watchedFilterRoute => GoRouteData.$route(
  path: '/watched-filter',

  factory: _$WatchedFilterRoute._fromState,
);

mixin _$WatchedFilterRoute on GoRouteData {
  static WatchedFilterRoute _fromState(GoRouterState state) =>
      WatchedFilterRoute();

  @override
  String get location => GoRouteData.$location('/watched-filter');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
