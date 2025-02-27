import '../entities/result.dart';

abstract interface class SyncRepository {
  Future<Result<void>> syncMovies();

  Future<Result<void>> syncSeries();
}
