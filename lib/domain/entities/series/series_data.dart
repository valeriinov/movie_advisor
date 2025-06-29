import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/cast_data.dart';
import '../base_media/country.dart';
import '../base_media/crew_data.dart';
import '../base_media/media_data.dart';
import '../mappable_entity.dart';
import '../rating/rating.dart';
import '../video/video_data.dart';
import 'series_genre.dart';

part 'series_data.mapper.dart';

@mappableEntity
final class SeriesData extends MediaData with SeriesDataMappable {
  final List<SeriesGenre> genres;

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
  });
}
