import 'package:dartz/dartz.dart';

import '../../../domain/entities/auth/auth_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/repositories/auth_repository.dart';
import '../../mappers/app_auth_mapper.dart';
import 'auth_remote_data_source.dart';

class ImplAuthRepository implements AuthRepository {
  final AuthRemoteDataSource _dataSource;
  final AppAuthMapper _mapper;

  ImplAuthRepository(
      {required AuthRemoteDataSource dataSource, required AppAuthMapper mapper})
      : _dataSource = dataSource,
        _mapper = mapper;

  @override
  Future<Result<void>> signIn(AuthData data) async {
    try {
      await _dataSource.signIn(_mapper.mapAuthDataToDto(data));

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<void>> signOut() async {
    try {
      await _dataSource.signOut();

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<void>> deleteAccount() async {
    try {
      await _dataSource.deleteAccount();

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }
}
