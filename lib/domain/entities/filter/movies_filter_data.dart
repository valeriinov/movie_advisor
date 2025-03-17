import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import '../movie/movie_genre.dart';
import 'country.dart';
import 'filter_data.dart';
import 'sort_by.dart';

part 'movies_filter_data.mapper.dart';

@mappableEntity
class MoviesFilterData extends FilterData with MoviesFilterDataMappable {
  final List<MovieGenre> withGenres;
  final List<MovieGenre> withoutGenres;

  const MoviesFilterData({
    super.year = 0,
    super.sortBy = SortBy.popularityDesc,
    super.withCountries = const [],
    super.withoutCountries = const [],
    this.withGenres = const [],
    this.withoutGenres = const [],
  });
}
