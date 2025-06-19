// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$watchlistRoute, $watchlistFilterRoute];

RouteBase get $watchlistRoute => GoRouteData.$route(
  path: '/watch-list',

  factory: _$WatchlistRoute._fromState,
);

mixin _$WatchlistRoute on GoRouteData {
  static WatchlistRoute _fromState(GoRouterState state) => WatchlistRoute();

  @override
  String get location => GoRouteData.$location('/watch-list');

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

RouteBase get $watchlistFilterRoute => GoRouteData.$route(
  path: '/watchlist-filter',

  factory: _$WatchlistFilterRoute._fromState,
);

mixin _$WatchlistFilterRoute on GoRouteData {
  static WatchlistFilterRoute _fromState(GoRouterState state) =>
      WatchlistFilterRoute();

  @override
  String get location => GoRouteData.$location('/watchlist-filter');

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
