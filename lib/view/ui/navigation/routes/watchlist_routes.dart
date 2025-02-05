import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/watchlist/watchlist_screen.dart';
import '../app_routes.dart';

part 'watchlist_routes.g.dart';

@TypedGoRoute<WatchlistRoute>(path: AppRoutes.watchList)
class WatchlistRoute extends GoRouteData {
  @override
  Page<void> buildPage(context, state) {
    return NoTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: WatchlistScreen(),
    );
  }
}
