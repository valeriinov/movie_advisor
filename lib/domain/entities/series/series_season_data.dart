import 'package:dart_mappable/dart_mappable.dart';

part 'series_season_data.mapper.dart';

@MappableClass()
final class SeriesSeasonData with SeriesSeasonDataMappable {
  final int seasonNumber;
  final int episodeCount;

  const SeriesSeasonData({
    required this.seasonNumber,
    required this.episodeCount,
  });
}
