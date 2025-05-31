import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../scenes/nav_menu/nav_menu_screen.dart';
import 'app_router.dart';
import 'app_routes.dart';
import 'routes/details_route.dart';
import 'routes/home_routes.dart';
import 'routes/more_routes.dart';
import 'routes/person_route.dart';
import 'routes/watched_routes.dart';
import 'routes/watchlist_routes.dart';
import 'utils/extended_shell_branch.dart';

final class ImplAppRouter implements AppRouter {
  final GlobalKey<NavigatorState> _rootNavKey;
  GoRouter? _router;

  ImplAppRouter({required GlobalKey<NavigatorState> rootNavKey})
    : _rootNavKey = rootNavKey;

  @override
  GlobalKey<NavigatorState> get rootNavKey => _rootNavKey;

  @override
  BuildContext get rootNavContext {
    if (_rootNavKey.currentContext == null) {
      throw StateError('Root navigator context is not available.');
    }
    return _rootNavKey.currentContext!;
  }

  @override
  RouterConfig<Object> get routerConfig {
    _router ??= _createRouter();

    return _router!;
  }

  GoRouter _createRouter() {
    return GoRouter(
      navigatorKey: _rootNavKey,
      initialLocation: AppRoutes.home,
      routes: [
        StatefulShellRoute(
          builder: (_, _, child) => child,
          navigatorContainerBuilder: (context, navShell, children) {
            return NavMenuScreen(navShell: navShell, children: children);
          },
          branches: [
            ExtendedShellBranch(routes: [$homeRoute]),
            ExtendedShellBranch(saveState: false, routes: [$watchlistRoute]),
            ExtendedShellBranch(saveState: false, routes: [$watchedRoute]),
            ExtendedShellBranch(saveState: false, routes: [$moreRoute]),
          ],
        ),
        $detailsRoute,
        $personRoute,
        $filterSettingsRoute,
      ],
      errorBuilder: (context, _) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go(AppRoutes.home);
        });

        return Scaffold(body: const SizedBox.shrink());
      },
    );
  }
}
