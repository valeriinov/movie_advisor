import 'package:flutter/material.dart';

import '../../../../../domain/entities/series/series_genre.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/entities/watched_filter/series_watched_filter_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../watched/watched_view_model/watched_view_model.dart';
import '../watched_filter_view_model/watched_filter_view_model.dart';
import 'watched_filter_media_view.dart';

class WatchedFilterSeriesView extends StatelessWidget {
  const WatchedFilterSeriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchedFilterMediaView<
      SeriesShortData,
      SeriesWatchedFilterData,
      SeriesGenre
    >(
      filterProvider: watchedFilterSeriesViewModelPr,
      watchedProvider: watchedSeriesViewModelPr,
      contentMode: ContentMode.series,
    );
  }
}
