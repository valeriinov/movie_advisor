// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeRoute, $filterSettingsRoute];

RouteBase get $homeRoute => GoRouteData.$route(
  path: '/home',

  factory: _$HomeRoute._fromState,
  routes: [
    GoRouteData.$route(path: 'search', factory: _$SearchRoute._fromState),
    GoRouteData.$route(path: 'filter', factory: _$FilterRoute._fromState),
  ],
);

mixin _$HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

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

mixin _$SearchRoute on GoRouteData {
  static SearchRoute _fromState(GoRouterState state) => SearchRoute();

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

mixin _$FilterRoute on GoRouteData {
  static FilterRoute _fromState(GoRouterState state) => FilterRoute();

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

  factory: _$FilterSettingsRoute._fromState,
);

mixin _$FilterSettingsRoute on GoRouteData {
  static FilterSettingsRoute _fromState(GoRouterState state) =>
      FilterSettingsRoute();

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
