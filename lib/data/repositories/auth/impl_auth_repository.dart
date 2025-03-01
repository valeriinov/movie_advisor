import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../domain/entities/auth/auth_data.dart';
import '../../../domain/entities/auth/delete_account_data.dart';
import '../../../domain/entities/auth/reg_data.dart';
import '../../../domain/entities/auth/reset_pass_data.dart';
import '../../../domain/entities/auth/user_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/repositories/auth_repository.dart';
import '../../dto/auth/user_data_dto.dart';
import '../../mappers/app_auth_mapper.dart';
import 'auth_remote_data_source.dart';

class ImplAuthRepository implements AuthRepository {
  final AuthRemoteDataSource _dataSource;
  final AppAuthMapper _mapper;

  ImplAuthRepository({
    required AuthRemoteDataSource dataSource,
    required AppAuthMapper mapper,
  }) : _dataSource = dataSource,
       _mapper = mapper;

  @override
  Stream<Result<UserData?>> get userChanges {
    return _dataSource.userChanges.transform(
      StreamTransformer<UserDataDto?, Result<UserData?>>.fromHandlers(
        handleData: (data, sink) {
          sink.add(Right(_mapper.mapUserdataDtoToDomain(data)));
        },
        handleError: (error, stackTrace, sink) {
          sink.add(Left(_mapper.getException(error)));
        },
      ),
    );
  }

  @override
  Future<Result<UserData?>> getUser() async {
    try {
      final data = await _dataSource.getUser();

      return Right(_mapper.mapUserdataDtoToDomain(data));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

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
  Future<Result<void>> signUp(RegData data) async {
    try {
      await _dataSource.signUp(_mapper.mapRegDataToDto(data));

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<void>> resetPass(ResetPassData data) async {
    try {
      await _dataSource.resetPass(_mapper.mapResetPassDataToDto(data));

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
  Future<Result<void>> deleteAccount(DeleteAccountData data) async {
    try {
      await _dataSource.deleteAccount(_mapper.mapDeleteAccountDataToDto(data));

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }
}
