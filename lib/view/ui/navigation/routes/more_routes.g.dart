// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'more_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$moreRoute];

RouteBase get $moreRoute => GoRouteData.$route(
  path: '/more',

  factory: _$MoreRoute._fromState,
  routes: [
    GoRouteData.$route(path: 'about-us', factory: _$AboutUsRoute._fromState),
    GoRouteData.$route(
      path: 'auth',

      factory: _$AuthRoute._fromState,
      routes: [
        GoRouteData.$route(path: 'reg', factory: _$RegRoute._fromState),
        GoRouteData.$route(
          path: 'reset-pass',

          factory: _$ResetPassRoute._fromState,
        ),
      ],
    ),
    GoRouteData.$route(
      path: 'delete-account',

      factory: _$DeleteAccountRoute._fromState,
    ),
    GoRouteData.$route(path: 'settings', factory: _$SettingsRoute._fromState),
  ],
);

mixin _$MoreRoute on GoRouteData {
  static MoreRoute _fromState(GoRouterState state) => MoreRoute();

  @override
  String get location => GoRouteData.$location('/more');

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

mixin _$AboutUsRoute on GoRouteData {
  static AboutUsRoute _fromState(GoRouterState state) => AboutUsRoute();

  @override
  String get location => GoRouteData.$location('/more/about-us');

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

mixin _$AuthRoute on GoRouteData {
  static AuthRoute _fromState(GoRouterState state) => AuthRoute();

  @override
  String get location => GoRouteData.$location('/more/auth');

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

mixin _$RegRoute on GoRouteData {
  static RegRoute _fromState(GoRouterState state) => RegRoute();

  @override
  String get location => GoRouteData.$location('/more/auth/reg');

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

mixin _$ResetPassRoute on GoRouteData {
  static ResetPassRoute _fromState(GoRouterState state) => ResetPassRoute();

  @override
  String get location => GoRouteData.$location('/more/auth/reset-pass');

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

mixin _$DeleteAccountRoute on GoRouteData {
  static DeleteAccountRoute _fromState(GoRouterState state) =>
      DeleteAccountRoute();

  @override
  String get location => GoRouteData.$location('/more/delete-account');

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

mixin _$SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => SettingsRoute();

  @override
  String get location => GoRouteData.$location('/more/settings');

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
