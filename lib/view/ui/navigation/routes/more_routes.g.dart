// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'more_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$moreRoute];

RouteBase get $moreRoute => GoRouteData.$route(
  path: '/more',
  factory: $MoreRoute._fromState,
  routes: [
    GoRouteData.$route(path: 'about-us', factory: $AboutUsRoute._fromState),
    GoRouteData.$route(
      path: 'auth',
      factory: $AuthRoute._fromState,
      routes: [
        GoRouteData.$route(path: 'reg', factory: $RegRoute._fromState),
        GoRouteData.$route(
          path: 'reset-pass',
          factory: $ResetPassRoute._fromState,
        ),
      ],
    ),
    GoRouteData.$route(
      path: 'delete-account',
      factory: $DeleteAccountRoute._fromState,
    ),
    GoRouteData.$route(path: 'settings', factory: $SettingsRoute._fromState),
  ],
);

mixin $MoreRoute on GoRouteData {
  static MoreRoute _fromState(GoRouterState state) => const MoreRoute();

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

mixin $AboutUsRoute on GoRouteData {
  static AboutUsRoute _fromState(GoRouterState state) => const AboutUsRoute();

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

mixin $AuthRoute on GoRouteData {
  static AuthRoute _fromState(GoRouterState state) => const AuthRoute();

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

mixin $RegRoute on GoRouteData {
  static RegRoute _fromState(GoRouterState state) => const RegRoute();

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

mixin $ResetPassRoute on GoRouteData {
  static ResetPassRoute _fromState(GoRouterState state) =>
      const ResetPassRoute();

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

mixin $DeleteAccountRoute on GoRouteData {
  static DeleteAccountRoute _fromState(GoRouterState state) =>
      const DeleteAccountRoute();

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

mixin $SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

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
