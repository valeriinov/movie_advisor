import 'package:dart_mappable/dart_mappable.dart';

import 'country.dart';
import '../mappable_entity.dart';
import '../rating/rating.dart';
import '../video/video_data.dart';
import 'cast_data.dart';

part 'media_data.mapper.dart';

@mappableEntity
abstract base class MediaData with MediaDataMappable {
  final int id;
  final String backdropUrl;
  final String posterUrl;
  final List<Country> originCountry;
  final String originalLanguage;
  final String originalTitle;
  final DateTime? premiereDate;
  final String title;
  final String overview;
  final TMDBRating tmdbRating;
  final List<CastData> cast;
  final List<VideoData> videos;
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
    this.premiereDate,
    required this.title,
    required this.overview,
    required this.tmdbRating,
    required this.cast,
    required this.videos,
    required this.userRating,
    required this.isInWatchlist,
    required this.isWatched,
  });
}
