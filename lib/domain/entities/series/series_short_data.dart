import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import '../rating/rating.dart';
import 'series_genre.dart';

part 'series_short_data.mapper.dart';

@mappableEntity
class SeriesShortData with SeriesShortDataMappable {
  final int id;
  final String posterUrl;
  final List<SeriesGenre> genres;
  final DateTime? firstAirDate;
  final String? title;
  final TMDBRating tmdbRating;
  final int userRating;
  final bool isInWatchlist;
  final bool isWatched;

  const SeriesShortData({
    required this.id,
    required this.posterUrl,
    required this.genres,
    required this.firstAirDate,
    required this.title,
    required this.tmdbRating,
    required this.userRating,
    required this.isInWatchlist,
    required this.isWatched,
});
}