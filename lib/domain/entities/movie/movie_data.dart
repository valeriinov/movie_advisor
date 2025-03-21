import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/cast_data.dart';
import '../base_media/crew_data.dart';
import '../base_media/media_data.dart';
import '../base_media/country.dart';
import '../mappable_entity.dart';
import '../rating/rating.dart';
import '../video/video_data.dart';
import 'movie_genre.dart';

part 'movie_data.mapper.dart';

@mappableEntity
final class MovieData extends MediaData with MovieDataMappable {
  final List<MovieGenre> genres;
  final int revenue;

  const MovieData({
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
    super.cast = const [],
    super.crew = const [],
    super.videos = const [],
    this.revenue = 0,
    super.userRating = 0,
    super.isInWatchlist = false,
    super.isWatched = false,
  });
}
