import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/series/series_short_data.dart';
import '../../repositories/home_repository.dart';
import 'home_use_case.dart';

class HomeSeriesUseCase implements HomeUseCase<SeriesShortData> {
  final HomeRepository _repository;

  HomeSeriesUseCase({required HomeRepository repository})
      : _repository = repository;

  @override
  Future<Result<PaginatedSeries>> getSuggested() {
    return _repository.getSuggestedSeries();
  }

  @override
  Future<Result<PaginatedSeries>> getNowPlaying({int page = 1}) {
    return _repository.getNowPlayingSeries(page: page);
  }

  @override
  Future<Result<PaginatedSeries>> getUpcoming({int page = 1}) {
    return _repository.getUpcomingSeries(page: page);
  }

  @override
  Future<Result<PaginatedSeries>> getTopRated({int page = 1}) {
    return _repository.getTopRatedSeries(page: page);
  }

  @override
  Future<Result<PaginatedSeries>> getPopular({int page = 1}) {
    return _repository.getPopularSeries(page: page);
  }
}
