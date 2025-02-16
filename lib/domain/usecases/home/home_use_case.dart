import '../../entities/base_media/media_short_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';

abstract interface class HomeUseCase<T extends MediaShortData> {
  Future<Result<ListWithPaginationData<T>>> getSuggested();

  Future<Result<ListWithPaginationData<T>>> getNowPlaying({int page = 1});

  Future<Result<ListWithPaginationData<T>>> getUpcoming({int page = 1});

  Future<Result<ListWithPaginationData<T>>> getTopRated({int page = 1});

  Future<Result<ListWithPaginationData<T>>> getPopular({int page = 1});
}
