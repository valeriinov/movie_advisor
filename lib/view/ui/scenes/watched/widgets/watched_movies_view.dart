import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/locale_keys.g.dart';
import '../watched_view_model/watched_view_model.dart';
import 'watched_media_view.dart';

class WatchedMoviesView extends StatelessWidget {
  const WatchedMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchedMediaView<MovieShortData, MoviesWatchedFilterData>(
      provider: watchedMoviesViewModelPr,
      contentMode: ContentMode.movies,
      screenTitle: LocaleKeys.watchedMoviesScreenTitle.tr(),
      emptyListTitle: LocaleKeys.emptyWatchedMoviesTitle.tr(),
      emptyListSubtitle: LocaleKeys.emptyWatchedMoviesSubtitle.tr(),
    );
  }
}
