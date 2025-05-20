import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';

import '../resources/base_theme/colors/base_colors_ext.dart';
import '../resources/base_theme/components/base_components_styles_ext.dart';
import '../resources/base_theme/dimens/base_dimens_ext.dart';
import 'app_svg_asset.dart';

class DetailsPropsTile extends StatelessWidget {
  final String iconPath;
  final String description;
  final Color? iconColor;
  final Matrix4? iconTransform;
  final TextStyle? descStyle;

  const DetailsPropsTile({
    super.key,
    required this.iconPath,
    required this.description,
    this.iconColor,
    this.iconTransform,
    this.descStyle,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final colors = context.baseColors;
    final styles = context.baseComponentsStyles;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          transform: iconTransform,
          child: AppSvgAsset(
            path: iconPath,
            color: iconColor ?? colors.textThemeSec,
            width: styles.detailsPropsIconSize,
            height: styles.detailsPropsIconSize,
          ),
        ),
        dimens.spSmall.gapHor(),
        Flexible(
          child: Text(
            description,
            style: descStyle ?? styles.detailsPropsTextStyle,
          ),
        ),
      ],
    );
  }
}
