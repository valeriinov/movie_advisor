import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../common/utils/ext/string/localized_sort_str.dart';
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
      SeriesGenre.none => '',
    };
  }
}

extension DescSeriesGenre on String {
  SeriesGenre seriesGenreFromDesc() {
    return switch (this) {
      final d when d == LocaleKeys.genreSerActionAdventure.tr() =>
        SeriesGenre.actionAndAdventure,
      final d when d == LocaleKeys.genreSerAnimation.tr() =>
        SeriesGenre.animation,
      final d when d == LocaleKeys.genreSerComedy.tr() => SeriesGenre.comedy,
      final d when d == LocaleKeys.genreSerCrime.tr() => SeriesGenre.crime,
      final d when d == LocaleKeys.genreSerDocumentary.tr() =>
        SeriesGenre.documentary,
      final d when d == LocaleKeys.genreSerDrama.tr() => SeriesGenre.drama,
      final d when d == LocaleKeys.genreSerFamily.tr() => SeriesGenre.family,
      final d when d == LocaleKeys.genreSerKids.tr() => SeriesGenre.kids,
      final d when d == LocaleKeys.genreSerMystery.tr() => SeriesGenre.mystery,
      final d when d == LocaleKeys.genreSerNews.tr() => SeriesGenre.news,
      final d when d == LocaleKeys.genreSerReality.tr() => SeriesGenre.reality,
      final d when d == LocaleKeys.genreSerSciFiFantasy.tr() =>
        SeriesGenre.sciFiAndFantasy,
      final d when d == LocaleKeys.genreSerSoap.tr() => SeriesGenre.soap,
      final d when d == LocaleKeys.genreSerTalk.tr() => SeriesGenre.talk,
      final d when d == LocaleKeys.genreSerWarPolitics.tr() =>
        SeriesGenre.warAndPolitics,
      final d when d == LocaleKeys.genreSerWestern.tr() => SeriesGenre.western,
      _ => SeriesGenre.none,
    };
  }
}

abstract final class SeriesGenreAlphabet {
  static List<SeriesGenre> values(String langCode) {
    return SeriesGenre.valuesWithoutNone.sorted(
      (a, b) => a.desc
          .localizedSortValue(langCode)
          .compareTo(b.desc.localizedSortValue(langCode)),
    );
  }
}
