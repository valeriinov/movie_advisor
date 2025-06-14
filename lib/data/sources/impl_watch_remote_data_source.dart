import '../dto/movie/movie_short_data_dto.dart';
import '../dto/movie/movie_watch_event_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../dto/series/series_watch_event_data_dto.dart';
import '../network/services/media_service.dart';
import '../network/services/watch_service.dart';
import '../repositories/watch/watch_remote_data_source.dart';

class ImplWatchRemoteDataSource implements WatchRemoteDataSource {
  final MediaService _mediaService;
  final WatchService _watchService;

  ImplWatchRemoteDataSource({
    required MediaService mediaService,
    required WatchService watchService,
  }) : _mediaService = mediaService,
       _watchService = watchService;

  @override
  Future<MovieShortDataDto> getLocalizedMovie(MovieShortDataDto data) {
    return _watchService.getLocalizedMovie(data);
  }

  @override
  Future<void> addToWatchlistMovie(MovieShortDataDto data) =>
      _mediaService.updateOrInsertMovie(data);

  @override
  Future<void> addToWatchedMovie(MovieShortDataDto data) =>
      _mediaService.updateOrInsertMovie(data);

  @override
  Future<void> removeFromWatchlistMovie(int id) =>
      _mediaService.updateMoviePartial(id, _removeWatchlistData());

  @override
  Future<void> removeFromWatchedMovie(int id) =>
      _mediaService.updateMoviePartial(id, _removeWatchedData());

  @override
  Future<SeriesShortDataDto> getLocalizedSeries(SeriesShortDataDto data) {
    return _watchService.getLocalizedSeries(data);
  }

  @override
  Future<void> addToWatchlistSeries(SeriesShortDataDto data) =>
      _mediaService.updateOrInsertSeries(data);

  @override
  Future<void> addToWatchedSeries(SeriesShortDataDto data) =>
      _mediaService.updateOrInsertSeries(data);

  @override
  Future<void> removeFromWatchlistSeries(int id) =>
      _mediaService.updateSeriesPartial(id, _removeWatchlistData());

  @override
  Future<void> removeFromWatchedSeries(int id) =>
      _mediaService.updateSeriesPartial(id, _removeWatchedData());

  Map<String, dynamic> _removeWatchlistData() => {
    'is_in_watchlist': false,
    'watchlist_added_at': null,
    'updated_at': DateTime.now(),
  };

  Map<String, dynamic> _removeWatchedData() => {
    'user_rating': 0,
    'is_watched': false,
    'last_watched_at': null,
    'updated_at': DateTime.now(),
  };

  @override
  Future<void> addMovieEvent(MovieWatchEventDataDto data) {
    return _mediaService.addMovieEvent(data);
  }

  @override
  Future<void> addSeriesEvent(SeriesWatchEventDataDto data) {
    return _mediaService.addSeriesEvent(data);
  }
}
