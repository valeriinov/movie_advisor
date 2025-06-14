import 'package:easy_localization/easy_localization.dart';

import '../../../../domain/entities/watchlist_filter/watchlist_sort_by.dart';
import '../locale_keys.g.dart';

extension WatchlistSortByDesc on WatchlistSortBy {
  String get desc {
    return switch (this) {
      WatchlistSortBy.addedDateAsc => LocaleKeys.sortByWatchlistAddAsc.tr(),
      WatchlistSortBy.addedDateDesc => LocaleKeys.sortByWatchlistAddDesc.tr(),
      WatchlistSortBy.premiereDateAsc => LocaleKeys.sortByReleaseDateAsc.tr(),
      WatchlistSortBy.premiereDateDesc => LocaleKeys.sortByReleaseDateDesc.tr(),
      WatchlistSortBy.tmdbRateAsc => LocaleKeys.sortByRatingAsc.tr(),
      WatchlistSortBy.tmdbRateDesc => LocaleKeys.sortByRatingDesc.tr(),
    };
  }
}
