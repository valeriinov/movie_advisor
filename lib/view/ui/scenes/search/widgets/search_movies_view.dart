import 'package:flutter/material.dart';

import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../search_view_model/search_view_model.dart';
import 'search_media_view.dart';

class SearchMoviesView extends StatelessWidget {
  final ScrollController scrollController;

  const SearchMoviesView({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SearchMediaView<MovieShortData>(
      scrollController: scrollController,
      provider: searchMoviesViewModelPr,
      contentMode: ContentMode.movies,
    );
  }
}
