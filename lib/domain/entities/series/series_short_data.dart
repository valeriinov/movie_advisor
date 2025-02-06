import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import '../rating/rating.dart';
import 'series_genre.dart';
import '../base_media/media_short_data.dart';

part 'series_short_data.mapper.dart';

@mappableEntity
final class SeriesShortData extends MediaShortData
    with SeriesShortDataMappable {
  final List<SeriesGenre> genres;

  const SeriesShortData({
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
