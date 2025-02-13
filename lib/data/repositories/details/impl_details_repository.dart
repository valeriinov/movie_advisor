import 'package:dartz/dartz.dart';

import '../../../domain/entities/result.dart';
import '../../../domain/repositories/details_repository.dart';
import '../../mappers/app_details_mapper.dart';
import 'details_remote_data_source.dart';

class ImplDetailsRepository implements DetailsRepository {
  final DetailsRemoteDataSource _dataSource;
  final AppDetailsMapper _mapper;

  ImplDetailsRepository(
      {required DetailsRemoteDataSource dataSource, required AppDetailsMapper mapper})
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
