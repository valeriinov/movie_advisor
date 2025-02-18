import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/nav_bars/base_nav_bars_styles_ext.dart';
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
        // Set the label size to zero so that it doesn't take up any space.
        bottomNavigationBarTheme: context.theme.bottomNavigationBarTheme
            .copyWith(selectedLabelStyle: TextStyle(fontSize: 0)),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: colors.navBarDivider),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          items: AppNavMenu.values
              .map((item) => _buildNavBarItem(context, item, currentIndex))
              .toList(),
          onTap: onTap,
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavBarItem(
    BuildContext context,
    AppNavMenu item,
    int currentIndex,
  ) {
    final colors = context.baseColors;
    final styles = context.baseNavBarsStyles;

    final isSelected = currentIndex == item.index;
    final color =
        isSelected ? colors.botNavBarFgSelect : colors.botNavBarFgUnselect;
    final labelStyle = styles.botNavBarLabelTextStyle.copyWith(color: color);

    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          16.gapVert(),
          AppSvgAsset(path: item.iconPath, color: color),
          8.gapVert(),
          Text(item.label, style: labelStyle),
          12.gapVert(),
        ],
      ),
      backgroundColor: colors.botNavBarBg,
      label: '', // Label is implemented in the icon to set the padding
    );
  }
}
