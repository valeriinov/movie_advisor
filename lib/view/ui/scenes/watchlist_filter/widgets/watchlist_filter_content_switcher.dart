import 'package:flutter/material.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import 'watchlist_filter_movies_view.dart';
import 'watchlist_filter_series_view.dart';

class WatchlistFilterContentSwitcher extends StatelessWidget {
  final ContentMode contMode;

  const WatchlistFilterContentSwitcher({super.key, required this.contMode});

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return AnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: contMode.isMovies
          ? WatchlistFilterMoviesView()
          : WatchlistFilterSeriesView(),
    );
  }
}