// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'search',
          factory: $SearchRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'details',
              factory: $SearchDetailsRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'details',
          factory: $HomeDetailsRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchRouteExtension on SearchRoute {
  static SearchRoute _fromState(GoRouterState state) => SearchRoute(
        contentMode: _$ContentModeEnumMap
            ._$fromName(state.uri.queryParameters['content-mode']!),
      );

  String get location => GoRouteData.$location(
        '/home/search',
        queryParams: {
          'content-mode': _$ContentModeEnumMap[contentMode],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$ContentModeEnumMap = {
  ContentMode.movies: 'movies',
  ContentMode.series: 'series',
};

extension $SearchDetailsRouteExtension on SearchDetailsRoute {
  static SearchDetailsRoute _fromState(GoRouterState state) =>
      SearchDetailsRoute(
        id: int.parse(state.uri.queryParameters['id']!),
        contentMode: _$ContentModeEnumMap
            ._$fromName(state.uri.queryParameters['content-mode']!),
      );

  String get location => GoRouteData.$location(
        '/home/search/details',
        queryParams: {
          'id': id.toString(),
          'content-mode': _$ContentModeEnumMap[contentMode],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HomeDetailsRouteExtension on HomeDetailsRoute {
  static HomeDetailsRoute _fromState(GoRouterState state) => HomeDetailsRoute(
        id: int.parse(state.uri.queryParameters['id']!),
        contentMode: _$ContentModeEnumMap
            ._$fromName(state.uri.queryParameters['content-mode']!),
      );

  String get location => GoRouteData.$location(
        '/home/details',
        queryParams: {
          'id': id.toString(),
          'content-mode': _$ContentModeEnumMap[contentMode],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
