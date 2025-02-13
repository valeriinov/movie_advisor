import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import 'search_movies_view.dart';
import 'search_series_view.dart';

class SearchContentSwitcher extends StatelessWidget {
  final ScrollController scrollController;
  final ContentMode contMode;

  const SearchContentSwitcher({
    super.key,
    required this.scrollController,
    required this.contMode,
  });

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return SliverAnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: contMode.isMovies
          ? SearchMoviesView(scrollController: scrollController)
          : SearchSeriesView(scrollController: scrollController),
    );
  }
}
