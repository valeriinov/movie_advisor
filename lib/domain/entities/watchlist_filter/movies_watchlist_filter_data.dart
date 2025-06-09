import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/country.dart';
import '../mappable_entity.dart';
import '../movie/movie_genre.dart';
import 'watchlist_filter_data.dart';
import 'watchlist_sort_by.dart';

part 'movies_watchlist_filter_data.mapper.dart';

@mappableEntity
class MoviesWatchlistFilterData extends WatchlistFilterData
    with MoviesWatchlistFilterDataMappable {
  final List<MovieGenre> withGenres;
  final List<MovieGenre> withoutGenres;

  const MoviesWatchlistFilterData({
    super.sortBy = WatchlistSortBy.addedDateAsc,
    super.withCountries = const [],
    super.includeWatched = true,
    this.withGenres = const [],
    this.withoutGenres = const [],
    super.fromDate,
    super.toDate,
  });
}
