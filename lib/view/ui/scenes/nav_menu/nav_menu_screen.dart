import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/nav_menu_screen_view.dart';

class NavMenuScreen extends StatelessWidget {
  final StatefulNavigationShell navShell;
  final List<Widget> children;

  const NavMenuScreen({
    super.key,
    required this.navShell,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return NavMenuScreenView(
      navShell: navShell,
      children: children,
    );
  }
}
