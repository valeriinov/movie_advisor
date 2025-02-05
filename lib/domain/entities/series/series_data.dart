import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import '../rating/rating.dart';
import 'series_genre.dart';

part 'series_data.mapper.dart';

@mappableEntity
class SeriesData with SeriesDataMappable {
  final int id;
  final String backdropUrl;
  final String posterUrl;
  final List<SeriesGenre> genres;
  final List<String>? originCountry;
  final String? originalLanguage;
  final String? originalName;
  final DateTime? firstAirDate;
  final String? title;
  final String? overview;
  final TMDBRating tmdbRating;
  final int userRating;
  final bool isInWatchlist;
  final bool isWatched;

  const SeriesData({
    required this.id,
    required this.backdropUrl,
    required this.posterUrl,
    required this.genres,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.firstAirDate,
    required this.title,
    required this.overview,
    required this.tmdbRating,
    required this.userRating,
    required this.isInWatchlist,
    required this.isWatched,
  });
}
