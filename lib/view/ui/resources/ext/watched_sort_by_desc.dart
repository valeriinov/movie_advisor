import 'package:easy_localization/easy_localization.dart';

import '../../../../domain/entities/watched_filter/watched_sort_by.dart';
import '../locale_keys.g.dart';

extension WatchedSortByDesc on WatchedSortBy {
  String get desc {
    return switch (this) {
      WatchedSortBy.watchedDateAsc => LocaleKeys.sortByWatchedDateAsc.tr(),
      WatchedSortBy.watchedDateDesc => LocaleKeys.sortByWatchedDateDesc.tr(),
      WatchedSortBy.premiereDateAsc => LocaleKeys.sortByReleaseDateAsc.tr(),
      WatchedSortBy.premiereDateDesc => LocaleKeys.sortByReleaseDateDesc.tr(),
      WatchedSortBy.tmdbRateAsc => LocaleKeys.sortByRatingAsc.tr(),
      WatchedSortBy.tmdbRateDesc => LocaleKeys.sortByRatingDesc.tr(),
      WatchedSortBy.userRateAsc => LocaleKeys.sortByUserRateAsc.tr(),
      WatchedSortBy.userRateDesc => LocaleKeys.sortByUserRateDesc.tr(),
    };
  }
}
