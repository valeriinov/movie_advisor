import '../entities/pagination/list_with_pagination_data.dart';
import '../entities/result.dart';
import '../entities/search/search_filter_data.dart';

abstract interface class SearchRepository {
  Future<Result<PaginatedMovies>> searchMovies(SearchFilterData filter,
      {required int page});

  Future<Result<PaginatedSeries>> searchSeries(SearchFilterData filter,
      {required int page});
}
