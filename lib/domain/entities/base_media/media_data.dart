import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import '../rating/rating.dart';

part 'media_data.mapper.dart';

@mappableEntity
abstract base class MediaData with MediaDataMappable {
  final int id;
  final String backdropUrl;
  final String posterUrl;
  final List<String> originCountry;
  final String originalLanguage;
  final String originalTitle;
  final DateTime premiereDate;
  final String title;
  final String overview;
  final TMDBRating tmdbRating;
  final int userRating;
  final bool isInWatchlist;
  final bool isWatched;

  const MediaData({
    required this.id,
    required this.backdropUrl,
    required this.posterUrl,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalTitle,
    required this.premiereDate,
    required this.title,
    required this.overview,
    required this.tmdbRating,
    required this.userRating,
    required this.isInWatchlist,
    required this.isWatched,
  });
}
