import 'package:easy_localization/easy_localization.dart';

import '../../../../domain/entities/series/series_genre.dart';
import '../locale_keys.g.dart';

extension SeriesGenreDesc on SeriesGenre {
  String get desc {
    return switch (this) {
      SeriesGenre.actionAndAdventure => LocaleKeys.genreSerActionAdventure.tr(),
      SeriesGenre.animation => LocaleKeys.genreSerAnimation.tr(),
      SeriesGenre.comedy => LocaleKeys.genreSerComedy.tr(),
      SeriesGenre.crime => LocaleKeys.genreSerCrime.tr(),
      SeriesGenre.documentary => LocaleKeys.genreSerDocumentary.tr(),
      SeriesGenre.drama => LocaleKeys.genreSerDrama.tr(),
      SeriesGenre.family => LocaleKeys.genreSerFamily.tr(),
      SeriesGenre.kids => LocaleKeys.genreSerKids.tr(),
      SeriesGenre.mystery => LocaleKeys.genreSerMystery.tr(),
      SeriesGenre.news => LocaleKeys.genreSerNews.tr(),
      SeriesGenre.reality => LocaleKeys.genreSerReality.tr(),
      SeriesGenre.sciFiAndFantasy => LocaleKeys.genreSerSciFiFantasy.tr(),
      SeriesGenre.soap => LocaleKeys.genreSerSoap.tr(),
      SeriesGenre.talk => LocaleKeys.genreSerTalk.tr(),
      SeriesGenre.warAndPolitics => LocaleKeys.genreSerWarPolitics.tr(),
      SeriesGenre.western => LocaleKeys.genreSerWestern.tr(),
    };
  }
}
