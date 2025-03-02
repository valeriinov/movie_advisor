import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../navigation/utils/extended_shell_branch.dart';
import '../utils/branch_handler_mixin.dart';

/// {@category Widgets}
///
/// A widget that wraps the content of an [ExtendedShellBranch] in a
/// [StatefulShellRoute]. This widget manages the visibility and interaction
/// of the branch content based on its `isActive` state and the `saveState`
/// property of the branch.
///
/// **Note:**
/// This widget is specifically designed to be used as part of a
/// [StatefulShellRoute] with branches of type [ExtendedShellBranch]. It is not
/// intended for standalone usage.
class ExtendedShellBranchContent extends StatelessWidget
    with BranchHandlerMixin {
  /// Whether the branch content is currently active.
  final bool isActive;

  /// The child widget representing the content of the branch.
  final Widget child;

  const ExtendedShellBranchContent({
    super.key,
    required this.isActive,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final saveState = shouldBranchSaveState(child);

    return saveState
        ? Offstage(
          offstage: !isActive,
          child: TickerMode(enabled: isActive, child: child),
        )
        : Visibility(visible: isActive, child: child);
  }
}
