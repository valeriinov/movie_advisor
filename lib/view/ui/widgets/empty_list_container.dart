import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../resources/base_theme/components/base_components_styles_ext.dart';
import '../resources/base_theme/dimens/base_dimens_ext.dart';
import 'image_with_loader.dart';

class EmptyListContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final double? height;

  const EmptyListContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final styles = context.baseComponentsStyles;

    return SizedBox(
      height: height,
      child: Center(
        child: Container(
          padding: dimens.spExtLarge.insVert(),
          width: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageWithLoader(imagePath: imagePath, size: Size(76, 76)),
              dimens.spMedium.gapVert(),
              Text(
                title,
                style: styles.emptyListTitleTextStyle,
                textAlign: TextAlign.center,
              ),
              dimens.spSmall.gapVert(),
              Text(
                subtitle,
                style: styles.emptyListSubtitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
