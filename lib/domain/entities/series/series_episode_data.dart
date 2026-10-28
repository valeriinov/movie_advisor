import 'package:dart_mappable/dart_mappable.dart';

part 'series_episode_data.mapper.dart';

@MappableClass()
final class SeriesEpisodeData with SeriesEpisodeDataMappable {
  final int seasonNumber;
  final int episodeNumber;
  final DateTime? airDate;

  const SeriesEpisodeData({
    this.seasonNumber = 0,
    this.episodeNumber = 0,
    this.airDate,
  });
}
