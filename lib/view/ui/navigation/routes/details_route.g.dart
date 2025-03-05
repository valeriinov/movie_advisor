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
        id: _$convertMapValue('id', state.uri.queryParameters, int.parse) ?? -1,
        contentMode: _$convertMapValue('content-mode',
                state.uri.queryParameters, _$ContentModeEnumMap._$fromName) ??
            ContentMode.movies,
      );

  String get location => GoRouteData.$location(
        '/details',
        queryParams: {
          if (id != -1) 'id': id.toString(),
          if (contentMode != ContentMode.movies)
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

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T? Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

extension<T extends Enum> on Map<T, String> {
  T? _$fromName(String? value) =>
      entries.where((element) => element.value == value).firstOrNull?.key;
}
