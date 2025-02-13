import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';

import '../../../../domain/entities/base_media/media_short_data.dart';
import '../../resources/base_theme/components/base_components_styles_ext.dart';
import '../poster.dart';
import 'widgets/media_info_content.dart';

class MediaInfoCard extends StatelessWidget {
  final MediaShortData itemData;
  final VoidCallback? onTap;

  const MediaInfoCard({
    super.key,
    required this.itemData,
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
          Poster(
            size: styles.posterSmallSize,
            url: itemData.posterUrl,
          ),
          12.gapHor(),
          MediaInfoContent(itemData: itemData),
        ],
      ),
    );
  }
}
