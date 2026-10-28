// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeRoute, $filterSettingsRoute];

RouteBase get $homeRoute => GoRouteData.$route(
  path: '/home',
  factory: $HomeRoute._fromState,
  routes: [
    GoRouteData.$route(path: 'search', factory: $SearchRoute._fromState),
    GoRouteData.$route(path: 'filter', factory: $FilterRoute._fromState),
  ],
);

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  @override
  String get location => GoRouteData.$location('/home');

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

mixin $SearchRoute on GoRouteData {
  static SearchRoute _fromState(GoRouterState state) => const SearchRoute();

  @override
  String get location => GoRouteData.$location('/home/search');

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

mixin $FilterRoute on GoRouteData {
  static FilterRoute _fromState(GoRouterState state) => const FilterRoute();

  @override
  String get location => GoRouteData.$location('/home/filter');

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

RouteBase get $filterSettingsRoute => GoRouteData.$route(
  path: '/filter-settings',
  factory: $FilterSettingsRoute._fromState,
);

mixin $FilterSettingsRoute on GoRouteData {
  static FilterSettingsRoute _fromState(GoRouterState state) =>
      const FilterSettingsRoute();

  @override
  String get location => GoRouteData.$location('/filter-settings');

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
