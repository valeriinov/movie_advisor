import '../../entities/filter/series_filter_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/series/series_short_data.dart';
import '../../repositories/filter_repository.dart';
import 'filter_use_case.dart';

class FilterSeriesUseCase
    implements FilterUseCase<SeriesShortData, SeriesFilterData> {
  final FilterRepository _repository;

  FilterSeriesUseCase({required FilterRepository repository})
    : _repository = repository;

  @override
  Future<Result<SeriesFilterData?>> getSavedFilter() {
    return _repository.getSavedSeriesFilter();
  }

  @override
  Future<Result<void>> saveFilter(SeriesFilterData filter) {
    return _repository.saveSeriesFilter(filter);
  }

  @override
  Future<Result<ListWithPaginationData<SeriesShortData>>> filter(
    SeriesFilterData filter, {
    int page = 1,
  }) {
    return _repository.filterSeries(filter, page: page);
  }
}
