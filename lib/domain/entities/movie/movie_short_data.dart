import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import '../rating/rating.dart';
import 'movie_genre.dart';

part 'movie_short_data.mapper.dart';

@mappableEntity
class MovieShortData with MovieShortDataMappable {
  final int id;
  final String posterUrl;
  final List<MovieGenre> genres;
  final DateTime releaseDate;
  final String title;
  final TMDBRating tmdbRating;
  final int userRating;
  final bool isInWatchlist;
  final bool isWatched;

  const MovieShortData({
    required this.id,
    required this.posterUrl,
    required this.genres,
    required this.releaseDate,
    required this.title,
    required this.tmdbRating,
    required this.userRating,
    required this.isInWatchlist,
    required this.isWatched,
  });
}
