import 'package:dartz/dartz.dart';

import '../../../domain/entities/result.dart';
import '../../../domain/repositories/sync_repository.dart';
import '../../mappers/app_mapper.dart';
import '../media_sync_data_source.dart';

class ImplSyncRepository implements SyncRepository {
  final MediaSyncDataSource _dataSource;
  final AppMapper _mapper;

  ImplSyncRepository({
    required MediaSyncDataSource dataSource,
    required AppMapper mapper,
  }) : _dataSource = dataSource,
       _mapper = mapper;

  @override
  Future<Result<void>> syncMovies() async {
    try {
      await _dataSource.syncMovies();

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<void>> syncSeries() async {
    try {
      await _dataSource.syncSeries();

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }
}
