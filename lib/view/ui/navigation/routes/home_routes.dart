import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../base/content_mode_view_model/content_mode.dart';
import '../../scenes/details/details_screen.dart';
import '../../scenes/home/home_screen.dart';
import '../../scenes/search/search_screen.dart';
import '../app_routes.dart';
import '../utils/transition_builder_mixin.dart';

part 'home_routes.g.dart';

@TypedGoRoute<HomeRoute>(path: AppRoutes.home, routes: [
  TypedGoRoute<SearchRoute>(path: AppRoutes.search, routes: [
    TypedGoRoute<SearchDetailsRoute>(path: AppRoutes.details),
  ]),
  TypedGoRoute<HomeDetailsRoute>(path: AppRoutes.details),
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

class SearchRoute extends GoRouteData with TransitionBuilderMixin {
  final ContentMode contentMode;

  SearchRoute({required this.contentMode});

  @override
  Page<void> buildPage(context, state) {
    return CustomTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: SearchScreen(initContentMode: contentMode),
      transitionsBuilder: fadeTransitionBuilder,
    );
  }
}

class HomeDetailsRoute extends GoRouteData {
  final int id;
  final ContentMode contentMode;

  HomeDetailsRoute({required this.id, required this.contentMode});

  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: DetailsScreen(
        id: id,
        contentMode: contentMode,
      ),
    );
  }
}

class SearchDetailsRoute extends GoRouteData {
  final int id;
  final ContentMode contentMode;

  SearchDetailsRoute({required this.id, required this.contentMode});

  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: DetailsScreen(
        id: id,
        contentMode: contentMode,
      ),
    );
  }
}
