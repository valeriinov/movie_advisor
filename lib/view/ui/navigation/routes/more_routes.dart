import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../scenes/about_us/about_us_screen.dart';
import '../../scenes/auth/auth_screen.dart';
import '../../scenes/auth/auth_view_model/auth_view_model.dart';
import '../../scenes/delete_account/delete_account_screen.dart';
import '../../scenes/delete_account/delete_account_view_model/delete_account_view_model.dart';
import '../../scenes/more/more_screen.dart';
import '../../scenes/reg/reg_screen.dart';
import '../../scenes/reg/reg_view_model/reg_view_model.dart';
import '../../scenes/reset_pass/reset_pass_screen.dart';
import '../../scenes/reset_pass/reset_pass_view_model/reset_pass_view_model.dart';
import '../../scenes/settings/settings_screen.dart';
import '../app_routes.dart';
import '../utils/exit_handler_mixin.dart';

part 'more_routes.g.dart';

@TypedGoRoute<MoreRoute>(
  path: AppRoutes.more,
  routes: [
    TypedGoRoute<AboutUsRoute>(path: AppRoutes.aboutUs),
    TypedGoRoute<AuthRoute>(
      path: AppRoutes.auth,
      routes: [
        TypedGoRoute<RegRoute>(path: AppRoutes.reg),
        TypedGoRoute<ResetPassRoute>(path: AppRoutes.resetPass),
      ],
    ),
    TypedGoRoute<DeleteAccountRoute>(path: AppRoutes.deleteAccount),
    TypedGoRoute<SettingsRoute>(path: AppRoutes.settings),
  ],
)
class MoreRoute extends GoRouteData with _$MoreRoute {
  @override
  Page<void> buildPage(context, state) {
    return NoTransitionPage(
      key: state.pageKey,
      name: state.fullPath,
      child: MoreScreen(),
    );
  }
}

class AboutUsRoute extends GoRouteData with _$AboutUsRoute {
  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: AboutUsScreen(),
    );
  }
}

class AuthRoute extends GoRouteData with ExitHandlerMixin, _$AuthRoute {
  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: AuthScreen(),
    );
  }

  @override
  Future<bool> onExit(BuildContext context, GoRouterState state) async {
    return onExitWithDialog(
      context,
      state,
      viewModelProvider: authViewModelPr,
      hasUnsavedData: (s) => s.formState.hasUnsavedData,
    );
  }
}

class RegRoute extends GoRouteData with ExitHandlerMixin, _$RegRoute {
  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: RegScreen(),
    );
  }

  @override
  Future<bool> onExit(BuildContext context, GoRouterState state) async {
    return onExitWithDialog(
      context,
      state,
      viewModelProvider: regViewModelPr,
      hasUnsavedData: (s) => s.formState.hasUnsavedData,
    );
  }
}

class ResetPassRoute extends GoRouteData
    with ExitHandlerMixin, _$ResetPassRoute {
  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: ResetPassScreen(),
    );
  }

  @override
  Future<bool> onExit(BuildContext context, GoRouterState state) async {
    return onExitWithDialog(
      context,
      state,
      viewModelProvider: resetPassViewModelPr,
      hasUnsavedData: (s) => s.formState.hasUnsavedData,
    );
  }
}

class DeleteAccountRoute extends GoRouteData
    with ExitHandlerMixin, _$DeleteAccountRoute {
  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: DeleteAccountScreen(),
    );
  }

  @override
  Future<bool> onExit(BuildContext context, GoRouterState state) async {
    return onExitWithDialog(
      context,
      state,
      viewModelProvider: deleteAccountViewModelPr,
      hasUnsavedData: (s) => s.formState.hasUnsavedData,
    );
  }
}

class SettingsRoute extends GoRouteData with _$SettingsRoute {
  @override
  Page<void> buildPage(context, state) {
    return MaterialPage(
      key: state.pageKey,
      name: state.fullPath,
      child: SettingsScreen(),
    );
  }
}
