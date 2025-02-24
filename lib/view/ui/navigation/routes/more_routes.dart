import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/about_us/about_us_screen.dart';
import '../../scenes/auth/auth_screen.dart';
import '../../scenes/more/more_screen.dart';
import '../app_routes.dart';

part 'more_routes.g.dart';

@TypedGoRoute<MoreRoute>(path: AppRoutes.more, routes: [
  TypedGoRoute<AboutUsRoute>(path: AppRoutes.aboutUs),
  TypedGoRoute<AuthRoute>(path: AppRoutes.auth),
])
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

class AboutUsRoute extends GoRouteData {
  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: AboutUsScreen(),
    );
  }
}

class AuthRoute extends GoRouteData {
  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: AuthScreen(),
    );
  }
}
