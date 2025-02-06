import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/home/home_screen.dart';
import '../../scenes/search/search_screen.dart';
import '../app_routes.dart';

part 'home_routes.g.dart';

@TypedGoRoute<HomeRoute>(path: AppRoutes.home, routes: [
  TypedGoRoute<SearchRoute>(path: AppRoutes.search),
])
class HomeRoute extends GoRouteData {
  @override
  Page<void> buildPage(context, state) {
    return NoTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: HomeScreen(),
    );
  }
}

class SearchRoute extends GoRouteData {
  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: SearchScreen(),
    );
  }
}
