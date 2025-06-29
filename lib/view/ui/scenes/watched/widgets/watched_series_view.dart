import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/entities/watched_filter/series_watched_filter_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/locale_keys.g.dart';
import '../watched_view_model/watched_view_model.dart';
import 'watched_media_view.dart';

class WatchedSeriesView extends StatelessWidget {
  const WatchedSeriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchedMediaView<SeriesShortData, SeriesWatchedFilterData>(
      provider: watchedSeriesViewModelPr,
      contentMode: ContentMode.series,
      screenTitle: LocaleKeys.watchedSeriesScreenTitle.tr(),
      emptyListTitle: LocaleKeys.emptyWatchedSeriesTitle.tr(),
      emptyListSubtitle: LocaleKeys.emptyWatchedSeriesSubtitle.tr(),
    );
  }
}
