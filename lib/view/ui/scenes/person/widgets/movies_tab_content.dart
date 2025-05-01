import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/person/person_credits_data.dart';
import '../../../../../domain/entities/person/person_mov_cred_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../navigation/routes/details_route.dart';
import '../../../resources/app_date_formats.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/ext/crew_job_desc.dart';
import '../../../resources/ext/movie_genre_desc.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/empty_tab_content.dart';
import '../../../widgets/media_info_card/widgets/media_info_wrapper.dart';
import 'credits_info_content.dart';

class MoviesTabContent extends HookWidget {
  final PersonCreditsMovie movieCredits;

  const MoviesTabContent({super.key, required this.movieCredits});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final movies = useMemoized<List<PersonMovCredData>>(
      () => _mergeCredits(movieCredits),
      [movieCredits],
    );

    return movies.isNotEmpty
        ? SliverPadding(
          padding: dimens.padHorPrimIns,
          sliver: SliverList.separated(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final item = movies[index];

              final year = _getYear(item.premiereDate);
              final genres = _getGenres(item.genres);

              return MediaInfoWrapper(
                posterUrl: item.posterUrl,
                onTap: () => _goToDetails(context, item.id),
                mediaInfoContent: CreditsInfoContent(
                  title: item.title,
                  genres: genres,
                  year: year,
                  actCharacter: item.actCharacter,
                  crewJob: item.crewJob?.desc,
                ),
              );
            },
            separatorBuilder: (_, __) => dimens.spLarge.gapVert(),
          ),
        )
        : EmptyTabContent(description: LocaleKeys.emptyMoviesTab.tr());
  }

  List<PersonMovCredData> _mergeCredits(PersonCreditsMovie credits) {
    final map = <int, PersonMovCredData>{};

    for (final castItem in credits.cast) {
      map[castItem.id] = castItem;
    }

    for (final crewItem in credits.crew) {
      map[crewItem.id] =
          map.containsKey(crewItem.id)
              ? map[crewItem.id]!.copyWith(crewJob: crewItem.crewJob)
              : crewItem;
    }

    final result = map.values.toList();

    result.sort((a, b) {
      final dateA = a.premiereDate ?? DateTime(0);
      final dateB = b.premiereDate ?? DateTime(0);
      return dateB.compareTo(dateA);
    });

    return result;
  }

  String? _getGenres(List<MovieGenre> genres) {
    return genres.isNotEmpty ? genres.map((e) => e.desc).join(', ') : '-';
  }

  String? _getYear(DateTime? date) {
    return date != null ? AppDateFormats.yearFormat(date) : '-';
  }

  void _goToDetails(BuildContext context, int id) {
    DetailsRoute(id: id, contentMode: ContentMode.movies).push(context);
  }
}
