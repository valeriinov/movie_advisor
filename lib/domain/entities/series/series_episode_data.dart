import 'package:dart_mappable/dart_mappable.dart';

part 'series_episode_data.mapper.dart';

@MappableClass()
final class SeriesEpisodeData with SeriesEpisodeDataMappable {
  final int seasonNumber;
  final int episodeNumber;
  final DateTime? airDate;

  const SeriesEpisodeData({
    required this.seasonNumber,
    required this.episodeNumber,
    required this.airDate,
  });
}
