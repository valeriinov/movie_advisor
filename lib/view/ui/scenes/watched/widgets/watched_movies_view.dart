import 'package:flutter/material.dart';

import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../watched_view_model/watched_view_model.dart';
import 'watched_media_view.dart';

class WatchedMoviesView extends StatelessWidget {
  const WatchedMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchedMediaView<MovieShortData>(
      provider: watchedMoviesViewModelPr,
      contentMode: ContentMode.movies,
    );
  }
}
