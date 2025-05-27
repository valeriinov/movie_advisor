import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'extended_shell_branch_content.dart';
import '../../../navigation/utils/extended_shell_branch.dart';

/// {@category Widgets}
///
/// A container widget for managing navigation branches in a [StatefulShellRoute].
/// This widget wraps each child widget with [ExtendedShellBranchContent],
/// ensuring that branch visibility and state management are handled correctly.
///
/// Example:
///
/// ```dart
/// Scaffold(
///   appBar: AppBar(),
///   body: NavBranchContainer(
///     currentIndex: currentIndex,
///     children: children,
///   ),
///   bottomNavigationBar: NavBarContainer(
///     currentIndex: currentIndex,
///     onTap: _switchBranch,
///   ),
/// );
/// ```
/// **Note:**
/// This widget is specifically designed to be used as part of a
/// [StatefulShellRoute] with branches of type [ExtendedShellBranch]. It is not
/// intended for standalone usage.
class NavBranchContainer extends StatelessWidget {
  final int currentIndex;
  final List<Widget> children;

  const NavBranchContainer({
    super.key,
    required this.currentIndex,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IndexedStack(
          index: currentIndex,
          children: children.mapIndexed((index, child) {
            return ExtendedShellBranchContent(
              isActive: currentIndex == index,
              child: child,
            );
          }).toList(),
        ),
        // if (!branch.saveState) children[currentIndex],
      ],
    );
  }
}
