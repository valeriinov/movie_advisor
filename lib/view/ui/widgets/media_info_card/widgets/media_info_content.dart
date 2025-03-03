import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../resources/app_images.dart';
import '../../../resources/app_rate_format.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/ext/media_date_str.dart';
import '../../../resources/ext/media_genres_str.dart';
import 'media_info_tile.dart';

class MediaInfoContent extends StatelessWidget {
  final MediaShortData itemData;

  const MediaInfoContent({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;
    final voteAverage = itemData.tmdbRating.voteAverage;

    return Expanded(
      child: Padding(
        padding: 25.insRight(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.gapVert(),
            Text(
              itemData.title,
              style: context.bodyLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            14.gapVert(),
            MediaInfoTile(
              iconPath: AppImages.starIcon,
              description: AppRateFormat.createRateString(
                voteAverage,
                itemData.userRating,
              ),
              textStyle: styles.infoCardRatingTextStyle,
            ),
            5.gapVert(),
            MediaInfoTile(
              iconPath: AppImages.genreIcon,
              description: itemData.getGenresStr(),
            ),
            5.gapVert(),
            MediaInfoTile(
              iconPath: AppImages.dateIcon,
              description: itemData.getPremiereYearStr(),
            ),
          ],
        ),
      ),
    );
  }
}
