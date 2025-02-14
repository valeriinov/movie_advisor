import '../../entities/base_media/media_short_data.dart';
import '../../entities/result.dart';

abstract interface class WatchUseCase<T extends MediaShortData> {
  Future<Result<void>> addToWatchlist(T data);

  Future<Result<void>> addToWatched(T data);

  Future<Result<void>> removeFromWatchlist(int id);

  Future<Result<void>> removeFromWatched(int id);
}
