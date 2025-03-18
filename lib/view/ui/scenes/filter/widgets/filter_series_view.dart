import 'package:flutter/material.dart';

import '../../../../../domain/entities/filter/series_filter_data.dart';
import '../../../../../domain/entities/series/series_genre.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../filter_view_model/filter_view_model.dart';
import 'filter_media_view.dart';

class FilterSeriesView extends StatelessWidget {
  final ScrollController scrollController;

  const FilterSeriesView({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return FilterMediaView<SeriesShortData, SeriesFilterData, SeriesGenre>(
      scrollController: scrollController,
      provider: filterSeriesViewModelPr,
      contentMode: ContentMode.series,
    );
  }
}
