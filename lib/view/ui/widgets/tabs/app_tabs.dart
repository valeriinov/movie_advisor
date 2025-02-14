import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../resources/base_theme/colors/base_colors_ext.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import 'app_tab.dart';

class AppTabs extends StatelessWidget {
  final List<String> tabs;
  final int currentIndex;
  final bool isPinned;
  final Function(int)? onSelect;

  const AppTabs({
    super.key,
    required this.tabs,
    required this.currentIndex,
    this.isPinned = true,
    this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final colors = context.baseColors;

    return SliverAppBar(
      pinned: isPinned,
      expandedHeight: 41 + (dimens.spLarge / 2),
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Skeleton.keep(
          child: Container(
            // Fix gap between tabs and header.
            transform: Matrix4.translationValues(0, -0.2, 0),
            color: colors.scaffoldBg,
            padding: (dimens.spLarge / 2).insBottom(),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: tabs.length,
              padding: dimens.padHorPrimIns,
              itemBuilder: (context, index) {
                final title = tabs[index];
                final isSelected = index == currentIndex;

                return AppTab(
                  title: title,
                  isSelected: isSelected,
                  onTap: onSelect != null ? () => onSelect!(index) : null,
                );
              },
              separatorBuilder: (_, __) => 4.gapHor(),
            ),
          ),
        ),
      ),
    );
  }
}
