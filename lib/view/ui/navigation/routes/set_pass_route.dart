import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/set_pass/set_pass_screen.dart';
import '../app_routes.dart';

part 'set_pass_route.g.dart';

@TypedGoRoute<SetPassRoute>(path: AppRoutes.setPass)
class SetPassRoute extends GoRouteData with _$SetPassRoute {
  final String oobCode;

  SetPassRoute({this.oobCode = ''});

  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: SetPassScreen(oobCode: oobCode),
    );
  }
}
