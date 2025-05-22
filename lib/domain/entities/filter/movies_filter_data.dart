import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/country.dart';
import '../mappable_entity.dart';
import '../movie/movie_genre.dart';
import 'filter_data.dart';
import 'sort_by.dart';

part 'movies_filter_data.mapper.dart';

@mappableEntity
class MoviesFilterData extends FilterData with MoviesFilterDataMappable {
  final List<MovieGenre> withGenres;
  final List<MovieGenre> withoutGenres;

  const MoviesFilterData({
    super.year,
    super.sortBy = SortBy.popularityDesc,
    super.withCountries = const [],
    super.includeWatched = true,
    super.includeWatchlist = true,
    this.withGenres = const [],
    this.withoutGenres = const [],
  });
}
