import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';

import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../poster.dart';

class MediaInfoWrapper extends StatelessWidget {
  final String posterUrl;
  final Widget mediaInfoContent;
  final VoidCallback? onTap;

  const MediaInfoWrapper({
    super.key,
    required this.posterUrl,
    required this.mediaInfoContent,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(styles.posterBorderRadius),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Poster(size: styles.posterSmallSize, url: posterUrl),
          12.gapHor(),
          mediaInfoContent,
        ],
      ),
    );
  }
}
