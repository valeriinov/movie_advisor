// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$personRoute];

RouteBase get $personRoute =>
    GoRouteData.$route(path: '/person', factory: _$PersonRoute._fromState);

mixin _$PersonRoute on GoRouteData {
  static PersonRoute _fromState(GoRouterState state) => PersonRoute(
    id: _$convertMapValue('id', state.uri.queryParameters, int.parse) ?? -1,
  );

  PersonRoute get _self => this as PersonRoute;

  @override
  String get location => GoRouteData.$location(
    '/person',
    queryParams: {if (_self.id != -1) 'id': _self.id.toString()},
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

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T? Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
