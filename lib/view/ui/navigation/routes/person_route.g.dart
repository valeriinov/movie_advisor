// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$personRoute];

RouteBase get $personRoute => GoRouteData.$route(
  path: '/person',

  factory: $PersonRouteExtension._fromState,
);

extension $PersonRouteExtension on PersonRoute {
  static PersonRoute _fromState(GoRouterState state) => PersonRoute(
    id: _$convertMapValue('id', state.uri.queryParameters, int.parse) ?? -1,
  );

  String get location => GoRouteData.$location(
    '/person',
    queryParams: {if (id != -1) 'id': id.toString()},
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T? Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
