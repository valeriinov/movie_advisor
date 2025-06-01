import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../common/utils/ext/string/localized_sort_str.dart';
import '../../../../domain/entities/movie/movie_genre.dart';
import '../locale_keys.g.dart';

extension MovieGenreDesc on MovieGenre {
  String get desc {
    return switch (this) {
      MovieGenre.action => LocaleKeys.genreMovAction.tr(),
      MovieGenre.adventure => LocaleKeys.genreMovAdventure.tr(),
      MovieGenre.animation => LocaleKeys.genreMovAnimation.tr(),
      MovieGenre.comedy => LocaleKeys.genreMovComedy.tr(),
      MovieGenre.crime => LocaleKeys.genreMovCrime.tr(),
      MovieGenre.documentary => LocaleKeys.genreMovDocumentary.tr(),
      MovieGenre.drama => LocaleKeys.genreMovDrama.tr(),
      MovieGenre.family => LocaleKeys.genreMovFamily.tr(),
      MovieGenre.fantasy => LocaleKeys.genreMovFantasy.tr(),
      MovieGenre.history => LocaleKeys.genreMovHistory.tr(),
      MovieGenre.horror => LocaleKeys.genreMovHorror.tr(),
      MovieGenre.music => LocaleKeys.genreMovMusic.tr(),
      MovieGenre.mystery => LocaleKeys.genreMovMystery.tr(),
      MovieGenre.romance => LocaleKeys.genreMovRomance.tr(),
      MovieGenre.scienceFiction => LocaleKeys.genreMovScienceFiction.tr(),
      MovieGenre.tvMovie => LocaleKeys.genreMovTvMovie.tr(),
      MovieGenre.thriller => LocaleKeys.genreMovThriller.tr(),
      MovieGenre.war => LocaleKeys.genreMovWar.tr(),
      MovieGenre.western => LocaleKeys.genreMovWestern.tr(),
      MovieGenre.none => '',
    };
  }
}

extension DescMovieGenre on String {
  MovieGenre moviesGenreFromDesc() {
    return switch (this) {
      final d when d == LocaleKeys.genreMovAction.tr() => MovieGenre.action,
      final d when d == LocaleKeys.genreMovAdventure.tr() =>
        MovieGenre.adventure,
      final d when d == LocaleKeys.genreMovAnimation.tr() =>
        MovieGenre.animation,
      final d when d == LocaleKeys.genreMovComedy.tr() => MovieGenre.comedy,
      final d when d == LocaleKeys.genreMovCrime.tr() => MovieGenre.crime,
      final d when d == LocaleKeys.genreMovDocumentary.tr() =>
        MovieGenre.documentary,
      final d when d == LocaleKeys.genreMovDrama.tr() => MovieGenre.drama,
      final d when d == LocaleKeys.genreMovFamily.tr() => MovieGenre.family,
      final d when d == LocaleKeys.genreMovFantasy.tr() => MovieGenre.fantasy,
      final d when d == LocaleKeys.genreMovHistory.tr() => MovieGenre.history,
      final d when d == LocaleKeys.genreMovHorror.tr() => MovieGenre.horror,
      final d when d == LocaleKeys.genreMovMusic.tr() => MovieGenre.music,
      final d when d == LocaleKeys.genreMovMystery.tr() => MovieGenre.mystery,
      final d when d == LocaleKeys.genreMovRomance.tr() => MovieGenre.romance,
      final d when d == LocaleKeys.genreMovScienceFiction.tr() =>
        MovieGenre.scienceFiction,
      final d when d == LocaleKeys.genreMovTvMovie.tr() => MovieGenre.tvMovie,
      final d when d == LocaleKeys.genreMovThriller.tr() => MovieGenre.thriller,
      final d when d == LocaleKeys.genreMovWar.tr() => MovieGenre.war,
      final d when d == LocaleKeys.genreMovWestern.tr() => MovieGenre.western,
      _ => MovieGenre.none,
    };
  }
}

abstract final class MovieGenreAlphabet {
  static List<MovieGenre> values(String langCode) {
    return MovieGenre.valuesWithoutNone.sorted(
      (a, b) => a.desc
          .localizedSortValue(langCode)
          .compareTo(b.desc.localizedSortValue(langCode)),
    );
  }
}
