import 'package:flutter/material.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../resources/app_images.dart';
import '../../../resources/app_rate_format.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/ext/media_countries_str.dart';
import '../../../resources/ext/media_date_str.dart';
import '../../../resources/ext/media_genres_str.dart';
import 'details_props_tile.dart';

class DetailsPropsContainer extends StatelessWidget {
  final MediaData data;

  const DetailsPropsContainer({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;
    final colors = context.baseColors;
    final dimens = context.baseDimens;

    return SliverToBoxAdapter(
      child: Padding(
        padding: dimens.padHorSecIns,
        child: Column(
          spacing: dimens.spMedium,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            DetailsPropsTile(
              iconPath: AppImages.starIcon,
              iconColor: colors.infoCardRating,
              descStyle: styles.detailsPropsRateTextStyle,
              description: AppRateFormat.createRateString(
                data.tmdbRating.voteAverage,
                data.userRating,
              ),
            ),
            DetailsPropsTile(
              iconPath: AppImages.genreIcon,
              description: data.getGenresStr(),
            ),
            DetailsPropsTile(
              iconPath: AppImages.earthIcon,
              description: data.getCountriesStr(),
            ),
            DetailsPropsTile(
              iconPath: AppImages.dateIcon,
              description: data.getPremiereYearStr(),
            ),
          ],
        ),
      ),
    );
  }
}
