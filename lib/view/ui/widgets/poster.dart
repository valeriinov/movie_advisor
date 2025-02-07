import 'package:flutter/material.dart';

import '../resources/base_theme/components/base_components_styles_ext.dart';
import 'image_with_placeholder.dart';

class Poster extends StatelessWidget {
  final String url;
  final Size? size;

  const Poster({
    super.key,
    required this.url,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;
    final imgSize = size ?? styles.posterMediumSize;

    return ClipRRect(
      borderRadius: BorderRadius.circular(
        styles.posterBorderRadius,
      ),
      child: SizedBox(
        width: imgSize.width,
        height: imgSize.height,
        child: ImageWithPlaceholder(
          imagePath: url,
          cacheWidth: imgSize.width.toInt(),
          cacheHeight: imgSize.height.toInt(),
        ),
      ),
    );
  }
}
