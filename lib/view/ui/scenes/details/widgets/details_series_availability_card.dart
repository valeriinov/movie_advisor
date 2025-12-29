import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/entities/series/series_data.dart';
import '../../../resources/app_date_formats.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';

class DetailsSeriesAvailabilityCard extends StatelessWidget {
  final SeriesData seriesData;

  const DetailsSeriesAvailabilityCard({required this.seriesData, super.key});

  @override
  Widget build(BuildContext context) {
    if (!seriesData.hasAvailabilityData) {
      return const SizedBox.shrink();
    }

    final styles = context.baseComponentsStyles;
    final dimens = context.baseDimens;

    final totalSeasonsTile = _buildTotalSeasonsTile(seriesData);
    final latestSeasonTile = _buildLatestSeasonTile(seriesData);
    final nextEpisodeTile = _buildNextEpisodeTile(seriesData);

    return Container(
      width: double.infinity,
      decoration: styles.cardSecBoxDecoration,
      padding: EdgeInsets.all(styles.cardSecContentPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: dimens.spSmall,
        children: [
          if (totalSeasonsTile != null) totalSeasonsTile,
          if (latestSeasonTile != null) latestSeasonTile,
          if (nextEpisodeTile != null) nextEpisodeTile,
        ],
      ),
    );
  }

  Widget? _buildTotalSeasonsTile(SeriesData series) {
    final totalSeasons = series.totalSeasonsCount;

    if (totalSeasons <= 0) {
      return null;
    }

    return _InfoTile(
      label: LocaleKeys.totalSeasons.tr(),
      value: '  ${totalSeasons.toString()}',
    );
  }

  Widget? _buildLatestSeasonTile(SeriesData series) {
    if (!series.hasLatestSeasonProgress) {
      return null;
    }

    final airedEpisode = series.latestSeasonAiredEpisode;
    final totalEpisodes = series.latestSeasonTotalEpisodes;

    if (airedEpisode == null || totalEpisodes == null) {
      return null;
    }

    return _InfoTile(
      label: LocaleKeys.latestSeason.tr(),
      value: '  $airedEpisode / $totalEpisodes ${LocaleKeys.episodes.tr()}',
    );
  }

  Widget? _buildNextEpisodeTile(SeriesData series) {
    if (!series.hasNextEpisode) {
      return null;
    }

    final date = series.nextEpisodeAirDate;

    if (date == null) {
      return null;
    }

    return _InfoTile(
      label: LocaleKeys.nextEpisode.tr(),
      value: '  ${AppDateFormats.dayMonthYearDotsFormat(date)}',
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String label;
  final String value;

  const _InfoTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: label, style: styles.cardSecLabelTextStyle),
          TextSpan(text: value, style: styles.cardSecValTextStyle),
        ],
      ),
    );
  }
}
