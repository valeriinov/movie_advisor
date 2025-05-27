import 'package:flutter/material.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import 'filter_settings_movies_view.dart';
import 'filter_settings_series_view.dart';

class FilterSettingsContentSwitcher extends StatelessWidget {
  final ContentMode contMode;

  const FilterSettingsContentSwitcher({super.key, required this.contMode});

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return AnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: contMode.isMovies
          ? FilterSettingsMoviesView()
          : FilterSettingsSeriesView(),
    );
  }
}
