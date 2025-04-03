// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$watchlistRoute];

RouteBase get $watchlistRoute => GoRouteData.$route(
  path: '/watch-list',

  factory: $WatchlistRouteExtension._fromState,
);

extension $WatchlistRouteExtension on WatchlistRoute {
  static WatchlistRoute _fromState(GoRouterState state) => WatchlistRoute();

  String get location => GoRouteData.$location('/watch-list');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
