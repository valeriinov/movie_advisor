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
    super.id = -1,
    super.backdropUrl = '',
    super.posterUrl = '',
    this.genres = const [],
    super.originCountry = const [],
    super.originalLanguage = '',
    super.originalTitle = '',
    super.premiereDate,
    super.title = '',
    super.overview = '',
    super.tmdbRating = const TMDBRating(),
    super.userRating = 0,
    super.isInWatchlist = false,
    super.isWatched = false,
  });
}
