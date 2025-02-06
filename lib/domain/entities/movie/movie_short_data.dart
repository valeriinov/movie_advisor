import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/media_short_data.dart';
import '../mappable_entity.dart';
import '../rating/rating.dart';
import 'movie_genre.dart';

part 'movie_short_data.mapper.dart';

@mappableEntity
final class MovieShortData extends MediaShortData with MovieShortDataMappable {
  final List<MovieGenre> genres;

  const MovieShortData({
    required super.id,
    required super.posterUrl,
    required this.genres,
    required super.premiereDate,
    required super.title,
    required super.tmdbRating,
    required super.userRating,
    required super.isInWatchlist,
    required super.isWatched,
  });
}
