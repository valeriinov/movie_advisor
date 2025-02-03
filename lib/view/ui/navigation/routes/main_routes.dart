import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/theme_preview_screen.dart';
import '../app_routes.dart';

part 'main_routes.g.dart';

@TypedGoRoute<MainRoute>(path: AppRoutes.main)
class MainRoute extends GoRouteData {
  @override
  Page<void> buildPage(context, state) {
    return NoTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: ThemePreviewScreen(),
    );
  }
}
