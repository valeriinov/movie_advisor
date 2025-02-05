import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import '../rating/rating.dart';
import 'movie_genre.dart';

part 'movie_data.mapper.dart';

@mappableEntity
class MovieData with MovieDataMappable {
  final int id;
  final String backdropUrl;
  final String posterUrl;
  final List<MovieGenre> genres;
  final String originalLanguage;
  final String originalTitle;
  final DateTime releaseDate;
  final String title;
  final String overview;
  final TMDBRating tmdbRating;
  final int userRating;
  final bool isInWatchlist;
  final bool isWatched;

  const MovieData({
    required this.id,
    required this.backdropUrl,
    required this.posterUrl,
    required this.genres,
    required this.originalLanguage,
    required this.originalTitle,
    required this.releaseDate,
    required this.title,
    required this.overview,
    required this.tmdbRating,
    required this.userRating,
    required this.isInWatchlist,
    required this.isWatched,
  });
}
