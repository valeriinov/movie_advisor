import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/country.dart';
import '../base_media/media_short_data.dart';
import '../mappable_entity.dart';
import '../rating/rating.dart';
import 'movie_genre.dart';

part 'movie_short_data.mapper.dart';

@mappableEntity
final class MovieShortData extends MediaShortData with MovieShortDataMappable {
  final List<MovieGenre> genres;

  const MovieShortData({
    super.id = -1,
    super.posterUrl = '',
    this.genres = const [],
    super.originCountry = const [],
    super.premiereDate,
    super.title = '',
    super.tmdbRating = const TMDBRating(),
    super.userRating = 0,
    super.isInWatchlist = false,
    super.isWatched = false,
    super.watchlistAddedAt,
    super.lastWatchedAt,
  });
}
