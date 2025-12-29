import 'package:collection/collection.dart';
import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/cast_data.dart';
import '../base_media/country.dart';
import '../base_media/crew_data.dart';
import '../base_media/media_data.dart';
import '../mappable_entity.dart';
import '../rating/rating.dart';
import '../video/video_data.dart';
import 'series_episode_data.dart';
import 'series_genre.dart';
import 'series_season_data.dart';

part 'series_data.mapper.dart';

@mappableEntity
final class SeriesData extends MediaData with SeriesDataMappable {
  final List<SeriesGenre> genres;
  final int totalSeasonsCount;
  final List<SeriesSeasonData> seasons;
  final SeriesEpisodeData? lastEpisodeToAir;
  final SeriesEpisodeData? nextEpisodeToAir;

  const SeriesData({
    super.id = -1,
    super.backdropUrl = '',
    super.posterUrl = '',
    this.genres = const [],
    super.originCountry = const [],
    super.originalLanguage = '',
    super.originalTitle = '',
    super.premiereDate,
    super.title = '',
    super.overview = '',
    super.tmdbRating = const TMDBRating(),
    super.cast = const [],
    super.crew = const [],
    super.videos = const [],
    super.userRating = 0,
    super.isInWatchlist = false,
    super.isWatched = false,
    super.watchlistAddedAt,
    super.lastWatchedAt,
    this.totalSeasonsCount = 0,
    this.seasons = const [],
    this.lastEpisodeToAir,
    this.nextEpisodeToAir,
  });

  /// Whether series has any availability-related data.
  bool get hasAvailabilityData =>
      totalSeasonsCount > 0 || hasLatestSeasonProgress || hasNextEpisode;

  /// Season number of the latest available episode.
  int? get latestSeasonNumber => lastEpisodeToAir?.seasonNumber;

  /// "8" from "8 / 10 episodes".
  int? get latestSeasonAiredEpisode => lastEpisodeToAir?.episodeNumber;

  /// "10" from "8 / 10 episodes".
  int? get latestSeasonTotalEpisodes {
    final seasonNumber = latestSeasonNumber;

    if (seasonNumber == null) {
      return null;
    }

    return _findSeason(seasonNumber)?.episodeCount;
  }

  /// Whether the series has not started airing yet.
  bool get isUpcoming =>
      !hasStartedAiring && (nextEpisodeAirDate != null || premiereDate != null);

  /// Whether at least one episode has already aired.
  bool get hasStartedAiring => lastEpisodeToAir != null;

  /// Date when the series starts airing.
  DateTime? get premiereAirDate => premiereDate ?? nextEpisodeAirDate;

  DateTime? get nextEpisodeAirDate => nextEpisodeToAir?.airDate;

  bool get hasNextEpisode => nextEpisodeAirDate != null;

  bool get hasLatestSeasonProgress {
    final aired = latestSeasonAiredEpisode;
    final total = latestSeasonTotalEpisodes;

    if (aired == null || total == null) {
      return false;
    }

    return aired <= total;
  }

  SeriesSeasonData? _findSeason(int seasonNumber) {
    return seasons.firstWhereOrNull(
      (season) => season.seasonNumber == seasonNumber,
    );
  }
}
