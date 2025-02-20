import 'package:flutter/material.dart';

import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../home_view_model/home_view_model.dart';
import 'home_media_view.dart';

class HomeMoviesView extends StatelessWidget {
  final ScrollController scrollController;

  const HomeMoviesView({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return HomeMediaView<MovieShortData>(
      scrollController: scrollController,
      provider: homeMoviesViewModelPr,
      contentMode: ContentMode.movies,
    );
  }
}
