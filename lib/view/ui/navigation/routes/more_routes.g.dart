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
      routes: [
        GoRouteData.$route(
          path: 'about-us',
          factory: $AboutUsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'auth',
          factory: $AuthRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'reg',
              factory: $RegRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'reset-pass',
              factory: $ResetPassRouteExtension._fromState,
            ),
          ],
        ),
      ],
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

extension $AboutUsRouteExtension on AboutUsRoute {
  static AboutUsRoute _fromState(GoRouterState state) => AboutUsRoute();

  String get location => GoRouteData.$location(
        '/more/about-us',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AuthRouteExtension on AuthRoute {
  static AuthRoute _fromState(GoRouterState state) => AuthRoute();

  String get location => GoRouteData.$location(
        '/more/auth',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RegRouteExtension on RegRoute {
  static RegRoute _fromState(GoRouterState state) => RegRoute();

  String get location => GoRouteData.$location(
        '/more/auth/reg',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ResetPassRouteExtension on ResetPassRoute {
  static ResetPassRoute _fromState(GoRouterState state) => ResetPassRoute();

  String get location => GoRouteData.$location(
        '/more/auth/reset-pass',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
