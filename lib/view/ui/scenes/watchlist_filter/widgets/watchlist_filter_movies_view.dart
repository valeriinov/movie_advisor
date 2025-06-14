import 'package:flutter/material.dart';

import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../watchlist/watchlist_view_model/watchlist_view_model.dart';
import '../watchlist_filter_view_model/watchlist_filter_view_model.dart';
import 'watchlist_filter_media_view.dart';

class WatchlistFilterMoviesView extends StatelessWidget {
  const WatchlistFilterMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchlistFilterMediaView<
      MovieShortData,
      MoviesWatchlistFilterData,
      MovieGenre
    >(
      filterProvider: watchlistFilterMoviesViewModelPr,
      watchlistProvider: watchlistMoviesViewModelPr,
      contentMode: ContentMode.movies,
    );
  }
}
