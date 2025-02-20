import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/entities/series/series_data.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../resources/locale_keys.g.dart';
import '../details_view_model/details_view_model.dart';
import 'details_media_view.dart';

class DetailsSeriesView extends StatelessWidget {
  final int id;

  const DetailsSeriesView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return DetailsMediaView<SeriesData, SeriesShortData>(
      id: id,
      provider: detailsSeriesViewModelPr,
      appBarTitle: LocaleKeys.detailsSeriesScreenTitle.tr(),
      rateTitle: LocaleKeys.rateSeriesTitle.tr(),
    );
  }
}
