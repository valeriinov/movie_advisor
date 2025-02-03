import 'package:dartz/dartz.dart';

import '../../../domain/entities/result.dart';
import '../../../domain/repositories/home_repository.dart';
import '../../mappers/app_home_mapper.dart';
import 'home_remote_data_source.dart';

class ImplHomeRepository implements HomeRepository {
  final HomeRemoteDataSource _dataSource;
  final AppHomeMapper _mapper;

  ImplHomeRepository(
      {required HomeRemoteDataSource dataSource, required AppHomeMapper mapper})
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
