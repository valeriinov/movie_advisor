import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import '../rating/rating.dart';

part 'media_short_data.mapper.dart';

@mappableEntity
abstract base class MediaShortData with MediaShortDataMappable {
  final int id;
  final String posterUrl;
  final DateTime premiereDate;
  final String title;
  final TMDBRating tmdbRating;
  final int userRating;
  final bool isInWatchlist;
  final bool isWatched;

  const MediaShortData({
    required this.id,
    required this.posterUrl,
    required this.premiereDate,
    required this.title,
    required this.tmdbRating,
    required this.userRating,
    required this.isInWatchlist,
    required this.isWatched,
  });
}
