import '../entities/result.dart';

abstract interface class RefreshRepository {
  Stream<Result<bool>> shouldRefreshContent({required bool isMovies});
}
