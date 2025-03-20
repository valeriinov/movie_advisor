import '../../entities/filter/movies_filter_data.dart';
import '../../entities/movie/movie_short_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../repositories/filter_repository.dart';
import 'filter_use_case.dart';

class FilterMoviesUseCase
    implements FilterUseCase<MovieShortData, MoviesFilterData> {
  final FilterRepository _repository;

  FilterMoviesUseCase({required FilterRepository repository})
    : _repository = repository;

  @override
  Future<Result<MoviesFilterData?>> getSavedFilter() {
    return _repository.getSavedMoviesFilter();
  }

  @override
  Future<Result<void>> saveFilter(MoviesFilterData filter) {
    return _repository.saveMoviesFilter(filter);
  }

  @override
  Future<Result<ListWithPaginationData<MovieShortData>>> filter(
    MoviesFilterData filter, {
    int page = 1,
  }) {
    return _repository.filterMovies(filter, page: page);
  }
}
