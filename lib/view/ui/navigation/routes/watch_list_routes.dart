import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/watch_list/watch_list_screen.dart';
import '../app_routes.dart';

part 'watch_list_routes.g.dart';

@TypedGoRoute<WatchListRoute>(path: AppRoutes.watchList)
class WatchListRoute extends GoRouteData {
  @override
  Page<void> buildPage(context, state) {
    return NoTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: WatchListScreen(),
    );
  }
}
