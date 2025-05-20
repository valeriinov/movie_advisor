import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/base_media/crew_data.dart';
import '../../../../../domain/entities/base_media/crew_job.dart';
import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../../../domain/entities/movie/movie_data.dart';
import '../../../resources/app_images.dart';
import '../../../resources/app_rate_format.dart';
import '../../../resources/app_revenue_format.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/ext/media_countries_str.dart';
import '../../../resources/ext/media_date_str.dart';
import '../../../resources/ext/media_genres_str.dart';
import '../../../widgets/details_props_tile.dart';
import 'props_directors_tile.dart';

class DetailsPropsContainer extends StatelessWidget {
  final MediaData data;

  const DetailsPropsContainer({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;
    final colors = context.baseColors;
    final dimens = context.baseDimens;

    final revenue = _getRevenue();
    final genres = data.getGenresStr();
    final countries = data.getCountriesStr();
    final premiereYear = data.getPremiereYearStr();
    final directors = _getDirectors();

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
            if (revenue > 0)
              DetailsPropsTile(
                iconPath: AppImages.revenueIcon,
                description: AppRevenueFormat.createRevenueString(revenue),
              ),
            if (genres.isNotBlank)
              DetailsPropsTile(
                iconPath: AppImages.genreIcon,
                description: data.getGenresStr(),
              ),
            if (countries.isNotBlank)
              DetailsPropsTile(
                iconPath: AppImages.earthIcon,
                description: data.getCountriesStr(),
              ),
            if (premiereYear.isNotBlank)
              DetailsPropsTile(
                iconPath: AppImages.dateIcon,
                description: data.getPremiereYearStr(),
              ),
            if (directors.isNotEmpty) PropsDirectorsTile(directors: directors),
          ],
        ),
      ),
    );
  }

  List<CrewData> _getDirectors() {
    return data.crew.where((e) => e.job == CrewJob.director).toList();
  }

  int _getRevenue() {
    if (data is! MovieData) return 0;

    return (data as MovieData).revenue;
  }
}
