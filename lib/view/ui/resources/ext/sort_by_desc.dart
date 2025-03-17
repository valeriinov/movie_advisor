import 'package:easy_localization/easy_localization.dart';

import '../../../../domain/entities/filter/sort_by.dart';
import '../locale_keys.g.dart';

extension SortByDesc on SortBy {
  String get desc {
    return switch (this) {
      SortBy.popularityAsc => LocaleKeys.sortByPopularityAsc.tr(),
      SortBy.popularityDesc => LocaleKeys.sortByPopularityDesc.tr(),
      SortBy.releaseDateAsc => LocaleKeys.sortByReleaseDateAsc.tr(),
      SortBy.releaseDateDesc => LocaleKeys.sortByReleaseDateDesc.tr(),
      SortBy.revenueAsc => LocaleKeys.sortByRevenueAsc.tr(),
      SortBy.revenueDesc => LocaleKeys.sortByRevenueDesc.tr(),
      SortBy.voteAverageAsc => LocaleKeys.sortByRatingAsc.tr(),
      SortBy.voteAverageDesc => LocaleKeys.sortByRatingDesc.tr(),
    };
  }
}
