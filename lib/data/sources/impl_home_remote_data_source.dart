import '../dto/movie/movies_response_data_dto.dart';
import '../dto/series/series_response_data_dto.dart';
import '../network/services/home_service.dart';
import '../repositories/home/home_remote_data_source.dart';

class ImplHomeRemoteDataSource implements HomeRemoteDataSource {
  final HomeService _service;

  ImplHomeRemoteDataSource({required HomeService service}) : _service = service;

  @override
  Future<MoviesResponseDataDto> getSuggestedMovies() {
    return _service.getSuggestedMovies();
  }

  @override
  Future<MoviesResponseDataDto> getNowPlayingMovies({required int page}) {
    return _service.getNowPlayingMovies(page: page);
  }

  @override
  Future<MoviesResponseDataDto> getUpcomingMovies({required int page}) {
    return _service.getUpcomingMovies(page: page);
  }

  @override
  Future<MoviesResponseDataDto> getTopRatedMovies({required int page}) {
    return _service.getTopRatedMovies(page: page);
  }

  @override
  Future<MoviesResponseDataDto> getPopularMovies({required int page}) {
    return _service.getPopularMovies(page: page);
  }

  @override
  Future<SeriesResponseDataDto> getSuggestedSeries() {
    return _service.getSuggestedSeries();
  }

  @override
  Future<SeriesResponseDataDto> getAiringTodaySeries({required int page}) {
    return _service.getAiringTodaySeries(page: page);
  }

  @override
  Future<SeriesResponseDataDto> getOnTheAirSeries({required int page}) {
    return _service.getOnTheAirSeries(page: page);
  }

  @override
  Future<SeriesResponseDataDto> getTopRatedSeries({required int page}) {
    return _service.getTopRatedSeries(page: page);
  }

  @override
  Future<SeriesResponseDataDto> getPopularSeries({required int page}) {
    return _service.getPopularSeries(page: page);
  }
}
