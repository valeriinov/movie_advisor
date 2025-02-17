// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $detailsRoute,
    ];

RouteBase get $detailsRoute => GoRouteData.$route(
      path: '/details',
      factory: $DetailsRouteExtension._fromState,
    );

extension $DetailsRouteExtension on DetailsRoute {
  static DetailsRoute _fromState(GoRouterState state) => DetailsRoute(
        id: int.parse(state.uri.queryParameters['id']!),
        contentMode: _$ContentModeEnumMap
            ._$fromName(state.uri.queryParameters['content-mode']!),
      );

  String get location => GoRouteData.$location(
        '/details',
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

const _$ContentModeEnumMap = {
  ContentMode.movies: 'movies',
  ContentMode.series: 'series',
};

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
