import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/country.dart';
import '../mappable_entity.dart';
import '../movie/movie_genre.dart';
import 'watched_filter_data.dart';
import 'watched_sort_by.dart';

part 'movies_watched_filter_data.mapper.dart';

@mappableEntity
class MoviesWatchedFilterData extends WatchedFilterData
    with MoviesWatchedFilterDataMappable {
  final List<MovieGenre> withGenres;
  final List<MovieGenre> withoutGenres;

  const MoviesWatchedFilterData({
    super.sortBy = WatchedSortBy.watchedDateAsc,
    super.withCountries = const [],
    super.includeWatchlist = true,
    this.withGenres = const [],
    this.withoutGenres = const [],
    super.fromPremiereDate,
    super.toPremiereDate,
    super.fromWatchedDate,
    super.toWatchedDate,
  });
}
