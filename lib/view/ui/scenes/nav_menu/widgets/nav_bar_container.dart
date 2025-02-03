import 'package:flutter/material.dart';

import '../model/app_nav_menu.dart';

class NavBarContainer extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavBarContainer(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: AppNavMenu.values.map(
        (item) {
          return BottomNavigationBarItem(
            icon: item.icon != null ? Icon(item.icon) : SizedBox(),
            label: item.label,
          );
        },
      ).toList(),
      onTap: onTap,
    );
  }
}  
  