// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$detailsRoute];

RouteBase get $detailsRoute =>
    GoRouteData.$route(path: '/details', factory: _$DetailsRoute._fromState);

mixin _$DetailsRoute on GoRouteData {
  static DetailsRoute _fromState(GoRouterState state) => DetailsRoute(
    id: _$convertMapValue('id', state.uri.queryParameters, int.parse) ?? -1,
    contentMode:
        _$convertMapValue(
          'content-mode',
          state.uri.queryParameters,
          _$ContentModeEnumMap._$fromName,
        ) ??
        ContentMode.movies,
  );

  DetailsRoute get _self => this as DetailsRoute;

  @override
  String get location => GoRouteData.$location(
    '/details',
    queryParams: {
      if (_self.id != -1) 'id': _self.id.toString(),
      if (_self.contentMode != ContentMode.movies)
        'content-mode': _$ContentModeEnumMap[_self.contentMode],
    },
  );

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
