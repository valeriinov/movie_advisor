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
    required super.id,
    required super.backdropUrl,
    required super.posterUrl,
    required this.genres,
    required super.originCountry,
    required super.originalLanguage,
    required super.originalTitle,
    required super.premiereDate,
    required super.title,
    required super.overview,
    required super.tmdbRating,
    required super.userRating,
    required super.isInWatchlist,
    required super.isWatched,
  });
}
