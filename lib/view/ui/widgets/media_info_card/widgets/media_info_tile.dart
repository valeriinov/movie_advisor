import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/context/text_theme_provider.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';

import '../../app_svg_asset.dart';

class MediaInfoTile extends StatelessWidget {
  final String iconPath;
  final String description;
  final TextStyle? textStyle;

  const MediaInfoTile({
    super.key,
    required this.iconPath,
    required this.description,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final style = textStyle ?? context.bodySmall;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSvgAsset(path: iconPath),
        4.gapHor(),
        Expanded(
          child: Text(
            description,
            style: style,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
