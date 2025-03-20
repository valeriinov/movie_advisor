import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/filter/filter_screen.dart';
import '../../scenes/home/home_screen.dart';
import '../../scenes/search/search_screen.dart';
import '../app_routes.dart';
import '../utils/transition_builder_mixin.dart';

part 'home_routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: AppRoutes.home,
  routes: [
    TypedGoRoute<SearchRoute>(path: AppRoutes.search),
    TypedGoRoute<FilterRoute>(path: AppRoutes.filter),
  ],
)
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

class SearchRoute extends GoRouteData with TransitionBuilderMixin {
  SearchRoute();

  @override
  Page<void> buildPage(context, state) {
    return CustomTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: SearchScreen(),
      transitionsBuilder: fadeTransitionBuilder,
    );
  }
}

class FilterRoute extends GoRouteData with TransitionBuilderMixin {
  FilterRoute();

  @override
  Page<void> buildPage(context, state) {
    return CustomTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: FilterScreen(),
      transitionsBuilder: fadeTransitionBuilder,
    );
  }
}
