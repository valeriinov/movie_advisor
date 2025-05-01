import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/person/person_credits_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../navigation/routes/details_route.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/empty_tab_content.dart';
import '../../../widgets/media_info_card/widgets/media_info_wrapper.dart';

class MoviesTabContent extends StatelessWidget {
  final PersonCreditsMovie movieCredits;

  const MoviesTabContent({super.key, required this.movieCredits});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final movies = [...movieCredits.cast, ...movieCredits.crew];

    return movies.isNotEmpty
        ? SliverPadding(
          padding: dimens.padHorPrimIns,
          sliver: SliverList.separated(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final item = movies[index];

              return MediaInfoWrapper(
                posterUrl: item.posterUrl,
                onTap: () => _goToDetails(context, item.id),
                mediaInfoContent: Container(), // TODO: Add content here
              );
            },
            separatorBuilder: (_, __) => dimens.spLarge.gapVert(),
          ),
        )
        : EmptyTabContent(description: LocaleKeys.emptyMoviesTab.tr());
  }

  void _goToDetails(BuildContext context, int id) {
    DetailsRoute(id: id, contentMode: ContentMode.movies).push(context);
  }
}
