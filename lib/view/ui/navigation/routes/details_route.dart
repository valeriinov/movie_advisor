import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../base/content_mode_view_model/content_mode.dart';
import '../../scenes/details/details_screen.dart';
import '../app_routes.dart';

part 'details_route.g.dart';

@TypedGoRoute<DetailsRoute>(path: AppRoutes.details)
class DetailsRoute extends GoRouteData with _$DetailsRoute {
  final int id;
  final ContentMode contentMode;

  /// The [DetailsScreen] is displayed above the navigation menu,
  /// use `push` when navigating to this screen.
  ///
  /// Example:
  /// ```dart
  /// _goToDetails(BuildContext context, int id) {
  ///   DetailsRoute(id: id, contentMode: ContentMode.movies).push(context);
  /// }
  /// ```
  DetailsRoute({this.id = -1, this.contentMode = ContentMode.movies});

  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: DetailsScreen(id: id, contentMode: contentMode),
    );
  }
}
