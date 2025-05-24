import 'package:flutter/material.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import 'filter_movies_view.dart';
import 'filter_series_view.dart';

class FilterContentSwitcher extends StatelessWidget {
  final ScrollController scrollController;
  final ContentMode contMode;

  const FilterContentSwitcher({
    super.key,
    required this.scrollController,
    required this.contMode,
  });

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return AnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: contMode.isMovies
          ? FilterMoviesView(scrollController: scrollController)
          : FilterSeriesView(scrollController: scrollController),
    );
  }
}
