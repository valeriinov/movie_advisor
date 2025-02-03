import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_router.dart';
import 'app_routes.dart';
import 'routes/main_routes.dart';

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
        initialLocation: AppRoutes.main,
        routes: [
          $mainRoute,
        ]);
  }
}
