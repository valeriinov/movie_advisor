import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../navigation/utils/branch_handler_mixin.dart';
import 'nav_bar_container.dart';
import 'nav_branch_container.dart';

class NavMenuScreenView extends StatelessWidget with BranchHandlerMixin {
  final StatefulNavigationShell navShell;
  final List<Widget> children;

  const NavMenuScreenView({
    super.key,
    required this.navShell,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final currentIndex = navShell.currentIndex;

    return PopScope(
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        navShell.goBranch(0);
      },
      canPop: currentIndex == 0,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: NavBranchContainer(
          currentIndex: currentIndex,
          children: children,
        ),
        bottomNavigationBar: NavBarContainer(
          currentIndex: currentIndex,
          onTap: _switchBranch,
        ),
      ),
    );
  }

  void _switchBranch(int index) {
    navShell.goBranch(
      index,
      initialLocation:
          _branchWithoutSaveState(index) || _tapOnActiveItem(index),
    );
  }

  bool _branchWithoutSaveState(int index) {
    return !shouldBranchSaveState(children[index]);
  }

  bool _tapOnActiveItem(int index) {
    return index == navShell.currentIndex;
  }
}
