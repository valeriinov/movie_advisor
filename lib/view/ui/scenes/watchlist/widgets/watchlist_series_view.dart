import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/locale_keys.g.dart';
import '../watchlist_view_model/watchlist_view_model.dart';
import 'watchlist_media_view.dart';

class WatchlistSeriesView extends StatelessWidget {
  const WatchlistSeriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchlistMediaView<SeriesShortData>(
      provider: watchlistSeriesViewModelPr,
      contentMode: ContentMode.series,
      screenTitle: LocaleKeys.watchlistSeriesScreenTitle.tr(),
      emptyListTitle: LocaleKeys.emptyWatchlistSeriesTitle.tr(),
      emptyListSubtitle: LocaleKeys.emptyWatchlistSeriesSubtitle.tr(),
    );
  }
}
