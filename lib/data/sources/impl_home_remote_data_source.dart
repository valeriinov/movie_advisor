import '../network/services/home_service.dart';
import '../repositories/home/home_remote_data_source.dart';

class ImplHomeRemoteDataSource implements HomeRemoteDataSource {
  final HomeService _service;

  ImplHomeRemoteDataSource({required HomeService service}) : _service = service;

  @override
  Future<void> fetch() {
    return _service.getNowPlayingMovies();
  }
}
