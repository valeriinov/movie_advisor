import 'package:dartz/dartz.dart';

import '../../../domain/entities/result.dart';
import '../../../domain/repositories/search_repository.dart';
import '../../mappers/app_search_mapper.dart';
import 'search_remote_data_source.dart';

class ImplSearchRepository implements SearchRepository {
  final SearchRemoteDataSource _dataSource;
  final AppSearchMapper _mapper;

  ImplSearchRepository(
      {required SearchRemoteDataSource dataSource, required AppSearchMapper mapper})
      : _dataSource = dataSource,
        _mapper = mapper;

  @override
  Future<Result<void>> fetch() async {
    try {
      await _dataSource.fetch();

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }
}
