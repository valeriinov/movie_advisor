import 'package:go_router/go_router.dart';

// https://github.com/flutter/flutter/issues/142258#issuecomment-2027985580

/// {@category Navigation}
///
/// A specialized implementation of [StatefulShellBranch] with an additional
/// `saveState` property to control whether the branch should preserve its
/// state.
///
/// The `saveState` property determines if the navigator stack for this branch
/// will retain its state when switching between branches in a [StatefulShellRoute].
/// By default, `saveState` is set to `true`, meaning the state of the branch
/// is preserved.
///
/// Example:
///
/// ```dart
/// StatefulShellRoute(
///   builder: (_, __, child) => child,
///   navigatorContainerBuilder: (context, navShell, children) {
///     return NavMenuScreen(navShell: navShell, children: children);
///   },
///   branches: [
///     ExtendedShellBranch(
///       routes: [$homeRoute],
///     ),
///     ExtendedShellBranch(
///       saveState: false, // Do not save state
///       routes: [$profileRoute],
///     ),
///   ],
/// );
/// ```
class ExtendedShellBranch extends StatefulShellBranch {
  /// Whether the branch should preserve its state.
  final bool saveState;

  ExtendedShellBranch({
    this.saveState = true,
    super.initialLocation,
    super.navigatorKey,
    super.observers,
    super.restorationScopeId,
    required super.routes,
  });
}
