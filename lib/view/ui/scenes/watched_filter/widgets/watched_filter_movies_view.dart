import 'package:flutter/material.dart';

import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../watched/watched_view_model/watched_view_model.dart';
import '../watched_filter_view_model/watched_filter_view_model.dart';
import 'watched_filter_media_view.dart';

class WatchedFilterMoviesView extends StatelessWidget {
  const WatchedFilterMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchedFilterMediaView<
      MovieShortData,
      MoviesWatchedFilterData,
      MovieGenre
    >(
      filterProvider: watchedFilterMoviesViewModelPr,
      watchedProvider: watchedMoviesViewModelPr,
      contentMode: ContentMode.movies,
    );
  }
}
