import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/locale_keys.g.dart';
import '../watchlist_view_model/watchlist_view_model.dart';
import 'watchlist_media_view.dart';

class WatchlistMoviesView extends StatelessWidget {
  const WatchlistMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchlistMediaView<MovieShortData, MoviesWatchlistFilterData>(
      provider: watchlistMoviesViewModelPr,
      contentMode: ContentMode.movies,
      screenTitle: LocaleKeys.watchlistMoviesScreenTitle.tr(),
      emptyListTitle: LocaleKeys.emptyWatchlistMoviesTitle.tr(),
      emptyListSubtitle: LocaleKeys.emptyWatchlistMoviesSubtitle.tr(),
    );
  }
}
