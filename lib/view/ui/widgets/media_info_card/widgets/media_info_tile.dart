import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/context/text_theme_provider.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/wrap_widget.dart';

import '../../app_svg_asset.dart';

class MediaInfoTile extends StatelessWidget {
  final String iconPath;
  final String description;
  final Color? iconColor;
  final TextStyle? textStyle;

  const MediaInfoTile({
    super.key,
    required this.iconPath,
    required this.description,
    this.iconColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final style = textStyle ?? context.bodySmall;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSvgAsset(path: iconPath, color: iconColor, height: 16, width: 16),
        4.gapHor(),
        Expanded(
          child: Text(
            description,
            style: style,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ).paddingOnly(right: 20);
  }
}
