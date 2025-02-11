import '../network/services/search_service.dart';
import '../repositories/search/search_remote_data_source.dart';

class ImplSearchRemoteDataSource implements SearchRemoteDataSource {
  final SearchService _service;

  ImplSearchRemoteDataSource({required SearchService service}) : _service = service;

  @override
  Future<void> fetch() {
    return _service.fetch();
  }
}
