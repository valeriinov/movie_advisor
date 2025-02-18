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
