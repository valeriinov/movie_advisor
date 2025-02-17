import 'package:flutter/material.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import 'details_movie_view.dart';
import 'details_series_view.dart';

class DetailsScreenView extends StatelessWidget {
  final int id;
  final ContentMode contentMode;

  const DetailsScreenView({
    super.key,
    required this.id,
    required this.contentMode,
  });

  @override
  Widget build(BuildContext context) {
    return contentMode.isMovies
        ? DetailsMovieView(id: id)
        : DetailsSeriesView(id: id);
  }
}
