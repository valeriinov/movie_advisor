import '../entities/pagination/list_with_pagination_data.dart';
import '../entities/result.dart';
import '../repositories/home_repository.dart';

class HomeSeriesUseCase {
  final HomeRepository _repository;

  HomeSeriesUseCase({required HomeRepository repository})
      : _repository = repository;

  Future<Result<PaginatedSeries>> getSuggestedSeries() {
    return _repository.getSuggestedSeries();
  }

  Future<Result<PaginatedSeries>> getNowPlayingSeries({int page = 1}) {
    return _repository.getAiringTodaySeries(page: page);
  }

  Future<Result<PaginatedSeries>> getUpcomingSeries({int page = 1}) {
    return _repository.getOnTheAirSeries(page: page);
  }

  Future<Result<PaginatedSeries>> getTopRatedSeries({int page = 1}) {
    return _repository.getTopRatedSeries(page: page);
  }

  Future<Result<PaginatedSeries>> getPopularSeries({int page = 1}) {
    return _repository.getPopularSeries(page: page);
  }
}
