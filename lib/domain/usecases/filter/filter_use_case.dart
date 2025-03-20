import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';

abstract interface class FilterUseCase<T, F> {
  Future<Result<F?>> getSavedFilter();

  Future<Result<void>> saveFilter(F filter);

  Future<Result<ListWithPaginationData<T>>> filter(F filter, {int page = 1});
}
