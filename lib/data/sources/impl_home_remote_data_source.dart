import '../network/services/home_service.dart';
import '../repositories/home/home_remote_data_source.dart';

class ImplHomeRemoteDataSource implements HomeRemoteDataSource {
  final HomeService _service;

  ImplHomeRemoteDataSource({required HomeService service}) : _service = service;

  @override
  Future<void> getNowPlayingMovies({required int page}) {
    return _service.getNowPlayingMovies(page: page);
  }
}
