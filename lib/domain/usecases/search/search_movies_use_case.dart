import '../../entities/movie/movie_short_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/search/search_filter_data.dart';
import '../../repositories/search_repository.dart';

import '../../entities/result.dart';
import 'search_use_case.dart';

class SearchMoviesUseCase implements SearchUseCase<MovieShortData> {
  final SearchRepository _repository;

  SearchMoviesUseCase({required SearchRepository repository})
    : _repository = repository;

  @override
  Future<Result<PaginatedMovies>> search(
    SearchFilterData filter, {
    int page = 1,
  }) {
    return _repository.searchMovies(filter, page: page);
  }
}
