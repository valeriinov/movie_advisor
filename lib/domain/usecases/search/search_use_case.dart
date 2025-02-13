import '../../entities/pagination/list_with_pagination_data.dart';

import '../../entities/result.dart';
import '../../entities/search/search_filter_data.dart';

abstract interface class SearchUseCase<T> {
  Future<Result<ListWithPaginationData<T>>> search(SearchFilterData filter,
      {int page = 1});
}
