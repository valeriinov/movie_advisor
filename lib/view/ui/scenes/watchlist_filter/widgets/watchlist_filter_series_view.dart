import 'package:flutter/material.dart';

import '../../../../../domain/entities/series/series_genre.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/entities/watchlist_filter/series_watchlist_filter_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../watchlist/watchlist_view_model/watchlist_view_model.dart';
import '../watchlist_filter_view_model/watchlist_filter_view_model.dart';
import 'watchlist_filter_media_view.dart';

class WatchlistFilterSeriesView extends StatelessWidget {
  const WatchlistFilterSeriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchlistFilterMediaView<
      SeriesShortData,
      SeriesWatchlistFilterData,
      SeriesGenre
    >(
      filterProvider: watchlistFilterSeriesViewModelPr,
      watchlistProvider: watchlistSeriesViewModelPr,
      contentMode: ContentMode.series,
    );
  }
}
