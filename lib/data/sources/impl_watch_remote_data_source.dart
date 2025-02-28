import '../dto/movie/movie_short_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../network/services/media_service.dart';
import '../repositories/watch/watch_remote_data_source.dart';

class ImplWatchRemoteDataSource implements WatchRemoteDataSource {
  final MediaService _service;

  ImplWatchRemoteDataSource({required MediaService service})
    : _service = service;

  @override
  Future<void> addToWatchlistMovie(MovieShortDataDto data) =>
      _service.updateOrInsertMovie(data);

  @override
  Future<void> addToWatchedMovie(MovieShortDataDto data) =>
      _service.updateOrInsertMovie(data);

  @override
  Future<void> removeFromWatchlistMovie(int id) =>
      _service.updateMoviePartial(id, _removeWatchlistData());

  @override
  Future<void> removeFromWatchedMovie(int id) =>
      _service.updateMoviePartial(id, _removeWatchedData());

  @override
  Future<void> addToWatchlistSeries(SeriesShortDataDto data) =>
      _service.updateOrInsertSeries(data);

  @override
  Future<void> addToWatchedSeries(SeriesShortDataDto data) =>
      _service.updateOrInsertSeries(data);

  @override
  Future<void> removeFromWatchlistSeries(int id) =>
      _service.updateSeriesPartial(id, _removeWatchlistData());

  @override
  Future<void> removeFromWatchedSeries(int id) =>
      _service.updateSeriesPartial(id, _removeWatchedData());

  Map<String, dynamic> _removeWatchlistData() => {
    'is_in_watchlist': false,
    'updated_at': DateTime.now(),
  };

  Map<String, dynamic> _removeWatchedData() => {
    'user_rating': 0,
    'is_watched': false,
    'updated_at': DateTime.now(),
  };
}
