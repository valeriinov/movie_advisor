import 'package:flutter/material.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import 'watched_filter_movies_view.dart';
import 'watched_filter_series_view.dart';

class WatchedFilterContentSwitcher extends StatelessWidget {
  final ContentMode contMode;

  const WatchedFilterContentSwitcher({super.key, required this.contMode});

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return AnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: contMode.isMovies
          ? WatchedFilterMoviesView()
          : WatchedFilterSeriesView(),
    );
  }
}
