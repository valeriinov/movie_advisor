import 'package:flutter/material.dart';

import '../../../navigation/utils/extended_shell_branch.dart';

/// {@category Navigation}
///
/// A mixin that provides utilities for handling [ExtendedShellBranch] instances
/// in a navigation structure. It includes methods for determining whether a branch
/// should save its state and for safely casting a widget to an [ExtendedShellBranch].
///
/// **Note:**
/// This mixin is specifically designed to be used in the context of a
/// [StatefulShellRoute] with branches of type [ExtendedShellBranch]. It is not
/// intended for standalone usage.
///
/// Example:
///
/// ```dart
/// class ExampleBranchContent extends StatelessWidget with BranchHandlerMixin {
///   final bool isActive;
///   final Widget child;
///
///   const ExampleBranchContent({
///     super.key,
///     required this.isActive,
///     required this.child,
///   });
///
///   @override
///   Widget build(BuildContext context) {
///     final saveState = shouldBranchSaveState(child);
///
///     return saveState
///         ? Offstage(
///             offstage: !isActive,
///             child: TickerMode(enabled: isActive, child: child),
///           )
///         : Visibility(visible: isActive, child: child);
///   }
/// }
/// ```
mixin BranchHandlerMixin {
  /// Determines whether the given [branchContent] should preserve its state.
  ///
  /// The [branchContent] parameter is the widget associated with a navigation branch.
  /// If the widget represents an [ExtendedShellBranch], this method returns the
  /// value of its `saveState` property. If not, it defaults to `true`.
  ///
  /// Returns `true` if the branch should save its state; otherwise, `false`.
  bool shouldBranchSaveState(Widget branchContent) {
    final branch = castToBranchOrNull(branchContent);
    return branch?.saveState ?? true;
  }

  /// Attempts to cast the given [branchContent] to an [ExtendedShellBranch].
  ///
  /// The [branchContent] parameter is the widget to be checked. If the widget
  /// contains a `branch` property of type [ExtendedShellBranch], it is returned.
  /// Otherwise, this method returns `null`.
  ///
  /// Returns an instance of [ExtendedShellBranch] if found; otherwise, `null`.
  ExtendedShellBranch? castToBranchOrNull(Widget branchContent) {
    if ((branchContent as dynamic).branch is! ExtendedShellBranch) return null;
    return (branchContent as dynamic).branch as ExtendedShellBranch;
  }
}
