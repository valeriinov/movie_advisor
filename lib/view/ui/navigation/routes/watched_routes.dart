import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/watched/watched_screen.dart';
import '../../scenes/watched_filter/watched_filter_screen.dart';
import '../app_routes.dart';
import '../utils/transition_builder_mixin.dart';

part 'watched_routes.g.dart';

@TypedGoRoute<WatchedRoute>(path: AppRoutes.watched)
class WatchedRoute extends GoRouteData with _$WatchedRoute {
  @override
  Page<void> buildPage(context, state) {
    return NoTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: WatchedScreen(),
    );
  }
}

@TypedGoRoute<WatchedFilterRoute>(path: AppRoutes.watchedFilter)
class WatchedFilterRoute extends GoRouteData
    with TransitionBuilderMixin, _$WatchedFilterRoute {
  /// The [WatchedFilterRoute] is displayed above the navigation menu,
  /// use `push` when navigating to this screen.
  ///
  /// Example:
  /// ```dart
  /// _goToWatchedFilter(BuildContext context) {
  ///   WatchedFilterRoute().push(context);
  /// }
  /// ```
  WatchedFilterRoute();

  @override
  Page<void> buildPage(context, state) {
    return CustomTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: WatchedFilterScreen(),
      transitionsBuilder: bottomToTopPopTransitionBuilder,
    );
  }
}
