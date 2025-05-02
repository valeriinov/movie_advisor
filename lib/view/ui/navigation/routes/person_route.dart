import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/person/person_screen.dart';
import '../app_routes.dart';

part 'person_route.g.dart';

@TypedGoRoute<PersonRoute>(path: AppRoutes.person)
class PersonRoute extends GoRouteData {
  final int id;

  /// The [PersonScreen] is displayed above the navigation menu,
  /// use `push` when navigating to this screen.
  ///
  /// Example:
  /// ```dart
  /// _goToPerson(BuildContext context, int id) {
  ///   PersonRoute(id: id).push(context);
  /// }
  /// ```
  PersonRoute({this.id = -1});

  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: PersonScreen(id: id),
    );
  }
}
