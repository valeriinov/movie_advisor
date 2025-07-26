// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_pass_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$setPassRoute];

RouteBase get $setPassRoute =>
    GoRouteData.$route(path: '/set-pass', factory: _$SetPassRoute._fromState);

mixin _$SetPassRoute on GoRouteData {
  static SetPassRoute _fromState(GoRouterState state) =>
      SetPassRoute(oobCode: state.uri.queryParameters['oob-code'] ?? '');

  SetPassRoute get _self => this as SetPassRoute;

  @override
  String get location => GoRouteData.$location(
    '/set-pass',
    queryParams: {if (_self.oobCode != '') 'oob-code': _self.oobCode},
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
