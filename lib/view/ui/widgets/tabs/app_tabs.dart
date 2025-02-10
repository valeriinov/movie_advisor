import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../resources/base_theme/colors/base_colors_ext.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import 'app_tab.dart';

class AppTabs extends StatelessWidget {
  final List<String> tabs;
  final int currentIndex;
  final Function(int)? onSelect;

  const AppTabs({
    super.key,
    required this.tabs,
    required this.currentIndex,
    this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final colors = context.baseColors;

    return PinnedHeaderSliver(
      child: Skeleton.keep(
        child: Container(
          height: 57,
          color: colors.scaffoldBg,
          padding: dimens.spMedium.insBottom(),
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
    );
  }
}
