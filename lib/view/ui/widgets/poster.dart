import 'package:flutter/material.dart';

import '../resources/base_theme/components/base_components_styles_ext.dart';
import 'image_with_placeholder.dart';

class Poster extends StatelessWidget {
  final String url;
  final Size? size;
  final VoidCallback? onTap;

  const Poster({
    super.key,
    required this.url,
    this.size,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;
    final imgSize = size ?? styles.posterMediumSize;

    final borderRadius = BorderRadius.circular(styles.posterBorderRadius);

    return Stack(
      children: [
        ClipRRect(
          borderRadius: borderRadius,
          child: SizedBox(
            width: imgSize.width,
            height: imgSize.height,
            child: ImageWithPlaceholder(
              imagePath: url,
              cacheWidth: imgSize.width.toInt(),
              cacheHeight: imgSize.height.toInt(),
            ),
          ),
        ),
        if (onTap != null)
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: borderRadius,
                onTap: onTap,
              ),
            ),
          ),
      ],
    );
  }
}
