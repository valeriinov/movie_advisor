import 'package:dartz/dartz.dart';

import '../../../domain/entities/result.dart';
import '../../../domain/repositories/settings_repository.dart';
import '../../mappers/app_mapper.dart';
import 'settings_local_data_source.dart';

class ImplSettingsRepository implements SettingsRepository {
  final SettingsLocalDataSource _dataSource;
  final AppMapper _mapper;

  ImplSettingsRepository({
    required SettingsLocalDataSource dataSource,
    required AppMapper mapper,
  }) : _dataSource = dataSource,
       _mapper = mapper;

  @override
  Future<Result<bool>> isFirstLaunch() async {
    try {
      final isFirstLaunch = await _dataSource.isFirstLaunch();

      return Right(isFirstLaunch);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<void>> setFirstLaunch() async {
    try {
      await _dataSource.setFirstLaunch();

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }
}
