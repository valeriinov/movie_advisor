import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/set_pass/set_pass_screen.dart';
import '../app_routes.dart';

part 'set_pass_route.g.dart';

@TypedGoRoute<SetPassRoute>(path: AppRoutes.setPass)
class SetPassRoute extends GoRouteData with _$SetPassRoute {
  static const String _oobCodeKey = 'oobCode';

  SetPassRoute();

  @override
  Page<void> buildPage(context, state) {
    final oobCode = _readOobCode(state);

    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: SetPassScreen(oobCode: oobCode),
    );
  }

  String _readOobCode(GoRouterState state) {
    if (_hasOobCode(state)) {
      return state.uri.queryParameters[_oobCodeKey] ?? '';
    }

    return '';
  }

  bool _hasOobCode(GoRouterState state) {
    return state.uri.queryParameters.containsKey(_oobCodeKey) &&
        (state.uri.queryParameters[_oobCodeKey]?.isNotEmpty ?? false);
  }
}
