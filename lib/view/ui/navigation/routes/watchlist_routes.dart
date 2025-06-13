import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/watchlist/watchlist_screen.dart';
import '../../scenes/watchlist_filter/watchlist_filter_screen.dart';
import '../app_routes.dart';
import '../utils/transition_builder_mixin.dart';

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

@TypedGoRoute<WatchlistFilterRoute>(path: AppRoutes.watchlistFilter)
class WatchlistFilterRoute extends GoRouteData with TransitionBuilderMixin {
  /// The [WatchlistFilterRoute] is displayed above the navigation menu,
  /// use `push` when navigating to this screen.
  ///
  /// Example:
  /// ```dart
  /// _goToWatchlistFilter(BuildContext context) {
  ///   WatchlistFilterRoute().push(context);
  /// }
  /// ```
  WatchlistFilterRoute();

  @override
  Page<void> buildPage(context, state) {
    return CustomTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: WatchlistFilterScreen(),
      transitionsBuilder: bottomToTopPopTransitionBuilder,
    );
  }
}
