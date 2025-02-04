import '../entities/result.dart';

abstract interface class HomeRepository {
  Future<Result<void>> getNowPlayingMovies({required int page});
}
