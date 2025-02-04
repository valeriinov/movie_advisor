import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/theme_preview_screen.dart';
import '../app_routes.dart';

part 'home_routes.g.dart';

@TypedGoRoute<HomeRoute>(path: AppRoutes.home)
class HomeRoute extends GoRouteData {
  @override
  Page<void> buildPage(context, state) {
    return NoTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: ThemePreviewScreen(),
    );
  }
}
