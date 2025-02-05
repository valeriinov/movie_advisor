import 'package:easy_localization/easy_localization.dart';

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
