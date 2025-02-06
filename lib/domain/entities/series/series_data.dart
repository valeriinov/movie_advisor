import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import '../rating/rating.dart';
import 'series_genre.dart';
import '../base_media/media_data.dart';

part 'series_data.mapper.dart';

@mappableEntity
final class SeriesData extends MediaData with SeriesDataMappable {
  final List<SeriesGenre> genres;

  const SeriesData({
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
