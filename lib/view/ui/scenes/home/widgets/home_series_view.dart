import 'package:flutter/material.dart';

import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../home_view_model/home_view_model.dart';
import 'home_media_view.dart';

class HomeSeriesView extends StatelessWidget {
  final ScrollController scrollController;

  const HomeSeriesView({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return HomeMediaView<SeriesShortData>(
      scrollController: scrollController,
      provider: homeSeriesViewModelPr,
      contentMode: ContentMode.series,
    );
  }
}
