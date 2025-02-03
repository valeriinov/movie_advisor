import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/watched/watched_screen.dart';
import '../app_routes.dart';

part 'watched_routes.g.dart';

@TypedGoRoute<WatchedRoute>(path: AppRoutes.watched)
class WatchedRoute extends GoRouteData {
  @override
  Page<void> buildPage(context, state) {
    return NoTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: WatchedScreen(),
    );
  }
}
