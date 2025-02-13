import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'nav_bar_container.dart';
import 'nav_branch_container.dart';

class NavMenuScreenView extends StatelessWidget {
  final StatefulNavigationShell navShell;
  final List<Widget> children;

  const NavMenuScreenView(
      {super.key, required this.navShell, required this.children});

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
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navShell.currentIndex,
    );
  }
}  
  