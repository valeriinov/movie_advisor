import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../../../domain/entities/series/series_data.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import 'details_series_availability_card.dart';

class DetailsSeriesAvailabilityContainer extends StatelessWidget {
  final MediaData data;

  const DetailsSeriesAvailabilityContainer({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final seriesData = _getSeriesData();

    return SliverToBoxAdapter(
      child: switch (seriesData) {
        final series? when (series.hasAvailabilityData) => Padding(
          padding: dimens.padHorPrimIns,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dimens.spMedium.gapVert(),
              Padding(
                padding: EdgeInsets.only(left: dimens.padHorPrim),
                child: Text(_getTitle(series), style: context.labelLarge),
              ),
              10.gapVert(),
              DetailsSeriesAvailabilityCard(seriesData: series),
              dimens.spMedium.gapVert(),
            ],
          ),
        ),
        _ => const SizedBox.shrink(),
      },
    );
  }

  String _getTitle(SeriesData data) {
    return data.isUpcoming
        ? LocaleKeys.premiere.tr()
        : LocaleKeys.availability.tr();
  }

  SeriesData? _getSeriesData() {
    return switch (data) {
      SeriesData d => d,
      _ => null,
    };
  }
}
