import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../widgets/app_svg_asset.dart';
import '../model/app_nav_menu.dart';

class NavBarContainer extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavBarContainer(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return Theme(
      data: context.theme.copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: Container(
        height: 78,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: colors.botNavBarDivider),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          items: AppNavMenu.values
              .map((item) => _buildNavBarItem(item, currentIndex, colors))
              .toList(),
          onTap: onTap,
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavBarItem(
    AppNavMenu item,
    int currentIndex,
    BaseColors colors,
  ) {
    final isSelected = currentIndex == item.index;
    final iconColor =
        isSelected ? colors.botNavBarFgSelect : colors.botNavBarFgUnselect;

    return BottomNavigationBarItem(
      icon: AppSvgAsset(path: item.iconPath, color: iconColor)
          .paddingOnly(bottom: 8),
      label: item.label,
    );
  }
}
