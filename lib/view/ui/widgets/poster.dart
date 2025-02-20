import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../resources/base_theme/components/base_components_styles_ext.dart';
import 'image_with_placeholder.dart';

class Poster extends StatelessWidget {
  final String url;
  final Size? size;
  final VoidCallback? onTap;
  final bool transparentPlaceholder;

  const Poster({
    super.key,
    required this.url,
    this.size,
    this.onTap,
    this.transparentPlaceholder = false,
  });

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;
    final imgSize = size ?? styles.posterLargeSize;

    final borderRadius = BorderRadius.circular(styles.posterBorderRadius);

    return Stack(
      children: [
        ClipRRect(
          borderRadius: borderRadius,
          child: SizedBox(
            width: imgSize.width,
            height: imgSize.height,
            child: ImageWithPlaceholder(
              placeholder:
                  transparentPlaceholder
                      ? PlaceholderImageGenerator.generate()
                      : null,
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
              child: InkWell(borderRadius: borderRadius, onTap: onTap),
            ),
          ),
      ],
    );
  }
}
