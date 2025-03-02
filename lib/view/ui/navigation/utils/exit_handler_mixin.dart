import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/dialogs/exit_dialog.dart';

/// {@category Navigation}
///
/// A mixin that provides exit handling functionality for [GoRouteData] instances.
/// It allows displaying a confirmation dialog when navigating away from a screen
/// that contains unsaved data.
///
/// **Note:** This mixin is intended to be used in conjunction with GoRouter navigation.
///
/// Example:
///
/// ```dart
/// class AuthRoute extends GoRouteData with ExitHandlerMixin {
///   @override
///   Page<void> buildPage(context, state) {
///     return MaterialPage(
///       key: state.pageKey,
///       name: state.fullPath,
///       child: AuthScreen(),
///     );
///   }
///
///   @override
///   Future<bool> onExit(BuildContext context, GoRouterState state) async {
///     return onExitWithDialog(
///       context,
///       viewModelProvider: authViewModelPr,
///       hasUnsavedData: (s) => s.formState.hasUnsavedData,
///     );
///   }
/// }
/// ```
mixin ExitHandlerMixin on GoRouteData {
  /// Handles exit logic by checking for unsaved data and showing a confirmation dialog if needed.
  ///
  /// The [context] parameter is used to access the widget tree.
  /// The [viewModelProvider] parameter provides the state to check for unsaved data.
  /// The [hasUnsavedData] function determines whether the state contains unsaved data.
  ///
  /// Returns `true` if navigation is allowed, otherwise `false`.
  Future<bool> onExitWithDialog<T>(
    BuildContext context, {
    required ProviderListenable<T> viewModelProvider,
    required bool Function(T) hasUnsavedData,
  }) async {
    final state = _getViewModelState(context, provider: viewModelProvider);

    return hasUnsavedData(state) ? _showExitConfirmationDialog(context) : true;
  }

  T _getViewModelState<T>(
    BuildContext context, {
    required ProviderListenable<T> provider,
  }) {
    final container = ProviderScope.containerOf(context);
    return container.read(provider);
  }

  Future<bool> _showExitConfirmationDialog(BuildContext context) async {
    bool canPop = false;

    await showDialog(
      context: context,
      builder: (_) => ExitDialog(onConfirm: () => canPop = true),
    );

    return canPop;
  }
}
