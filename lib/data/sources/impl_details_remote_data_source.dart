import '../network/services/details_service.dart';
import '../repositories/details/details_remote_data_source.dart';

class ImplDetailsRemoteDataSource implements DetailsRemoteDataSource {
  final DetailsService _service;

  ImplDetailsRemoteDataSource({required DetailsService service}) : _service = service;

  @override
  Future<void> fetch() {
    return _service.fetch();
  }
}
