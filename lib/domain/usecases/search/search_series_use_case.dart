import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/search/search_filter_data.dart';
import '../../entities/series/series_short_data.dart';
import '../../repositories/search_repository.dart';
import 'search_use_case.dart';

class SearchSeriesUseCase implements SearchUseCase<SeriesShortData> {
  final SearchRepository _repository;

  SearchSeriesUseCase({required SearchRepository repository})
    : _repository = repository;

  @override
  Future<Result<PaginatedSeries>> search(
    SearchFilterData filter, {
    int page = 1,
  }) {
    return _repository.searchSeries(filter, page: page);
  }
}
