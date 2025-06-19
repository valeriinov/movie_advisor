import '../../entities/base_media/media_short_data.dart';
import '../../entities/result.dart';

abstract interface class WatchUseCase<T extends MediaShortData> {
  Stream<Result<T>> watchChanges();

  Future<Result<void>> addToWatchlist(T data);

  Future<Result<void>> addToWatched(
    T data, {
    bool deleteFromWatchlistIfExists = false,
  });

  Future<Result<void>> removeFromWatchlist(int id);

  Future<Result<void>> removeFromWatched(int id);
}
