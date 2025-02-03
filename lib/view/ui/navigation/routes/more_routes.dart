import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/more/more_screen.dart';
import '../app_routes.dart';

part 'more_routes.g.dart';

@TypedGoRoute<MoreRoute>(path: AppRoutes.more)
class MoreRoute extends GoRouteData {
  @override
  Page<void> buildPage(context, state) {
    return NoTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: MoreScreen(),
    );
  }
}
