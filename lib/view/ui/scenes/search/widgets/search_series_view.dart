import 'package:flutter/material.dart';

import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../search_view_model/search_view_model.dart';
import 'search_media_view.dart';

class SearchSeriesView extends StatelessWidget {
  final ScrollController scrollController;

  const SearchSeriesView({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SearchMediaView<SeriesShortData>(
      scrollController: scrollController,
      provider: searchSeriesViewModelPr,
      contentMode: ContentMode.series,
    );
  }
}
