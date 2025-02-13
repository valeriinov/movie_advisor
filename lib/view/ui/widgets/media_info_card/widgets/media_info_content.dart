import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../common/utils/ext/double/to_rating.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../resources/app_date_formats.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/ext/movie_genre_desc.dart';
import '../../../resources/ext/series_genre_desc.dart';
import 'media_info_tile.dart';

class MediaInfoContent extends StatelessWidget {
  final MediaShortData itemData;

  const MediaInfoContent({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;
    final voteAverage = itemData.tmdbRating.voteAverage;
    final year = itemData.premiereDate != null
        ? AppDateFormats.yearFormat(itemData.premiereDate!)
        : '-';

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
              description: voteAverage.toRatingString(),
              textStyle: styles.infoCardRatingTextStyle,
            ),
            5.gapVert(),
            MediaInfoTile(
              iconPath: AppImages.genreIcon,
              description: _getGenres(),
            ),
            5.gapVert(),
            MediaInfoTile(
              iconPath: AppImages.dateIcon,
              description: year,
            ),
          ],
        ),
      ),
    );
  }

  String _getGenres() {
    return switch (itemData) {
      MovieShortData(genres: final g) => g.map((e) => e.desc).join(', '),
      SeriesShortData(genres: final g) => g.map((e) => e.desc).join(', '),
      _ => ''
    };
  }
}
