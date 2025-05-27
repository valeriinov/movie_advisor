import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../widgets/app_svg_asset.dart';

class FilterButton extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;
  final Size? iconSize;
  final Function()? onTap;

  const FilterButton({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    this.iconSize,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;
    final styles = context.baseComponentsStyles;

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: 12.insHor(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppSvgAsset(
                path: iconPath,
                height: iconSize?.height ?? 28,
                width: iconSize?.width ?? 28,
                color: colors.filterPrimFg,
              ),
              8.gapHor(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title, style: styles.filterTitleTextStyle),
                  Text(subtitle, style: styles.filterSubtTextStyle),
                ],
              ).paddingOnly(bottom: 3),
            ],
          ),
        ),
      ),
    );
  }
}
