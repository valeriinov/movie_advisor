import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import '../rating/rating.dart';
import 'movie_genre.dart';
import '../base_media/media_data.dart';

part 'movie_data.mapper.dart';

@mappableEntity
final class MovieData extends MediaData with MovieDataMappable {
  final List<MovieGenre> genres;

  const MovieData({
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
    super.userRating = 0,
    super.isInWatchlist = false,
    super.isWatched = false,
  });
}
