import 'package:flutter/material.dart';

import '../../../../../domain/entities/filter/series_filter_data.dart';
import '../../../../../domain/entities/series/series_genre.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../filter/filter_view_model/filter_view_model.dart';
import '../filter_settings_view_model/filter_settings_view_model.dart';
import 'filter_settings_media_view.dart';

class FilterSettingsSeriesView extends StatelessWidget {
  const FilterSettingsSeriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return FilterSettingsMediaView<
      SeriesShortData,
      SeriesFilterData,
      SeriesGenre
    >(
      filterSettingsProvider: filterSettingsSeriesViewModelPr,
      filterProvider: filterSeriesViewModelPr,
      contentMode: ContentMode.series,
    );
  }
}
