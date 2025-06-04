import 'package:flutter/material.dart';

import '../../../../../domain/entities/filter/movies_filter_data.dart';
import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../filter/filter_view_model/filter_view_model.dart';
import '../filter_settings_view_model/filter_settings_view_model.dart';
import 'filter_settings_media_view.dart';

class FilterSettingsMoviesView extends StatelessWidget {
  const FilterSettingsMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return FilterSettingsMediaView<
      MovieShortData,
      MoviesFilterData,
      MovieGenre
    >(
      filterSettingsProvider: filterSettingsMoviesViewModelPr,
      filterProvider: filterMoviesViewModelPr,
      contentMode: ContentMode.movies,
    );
  }
}
