import 'package:flutter/material.dart';

import '../../../../../domain/entities/filter/movies_filter_data.dart';
import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../filter_view_model/filter_view_model.dart';
import 'filter_media_view.dart';

class FilterMoviesView extends StatelessWidget {
  final ScrollController scrollController;

  const FilterMoviesView({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return FilterMediaView<MovieShortData, MoviesFilterData, MovieGenre>(
      scrollController: scrollController,
      provider: filterMoviesViewModelPr,
      contentMode: ContentMode.movies,
    );
  }
}
