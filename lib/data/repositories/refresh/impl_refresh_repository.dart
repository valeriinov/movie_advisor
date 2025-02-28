import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../domain/entities/result.dart';
import '../../../domain/repositories/refresh_repository.dart';
import '../../mappers/app_mapper.dart';
import 'refresh_local_data_source.dart';

class ImplRefreshRepository implements RefreshRepository {
  final RefreshLocalDataSource _dataSource;
  final AppMapper _mapper;

  ImplRefreshRepository({
    required RefreshLocalDataSource dataSource,
    required AppMapper mapper,
  }) : _dataSource = dataSource,
       _mapper = mapper;

  @override
  Stream<Result<bool>> shouldRefreshContent({required bool isMovies}) {
    return _dataSource
        .shouldRefreshContent(isMovies: isMovies)
        .transform(
          StreamTransformer<bool, Result<bool>>.fromHandlers(
            handleData: (data, sink) {
              sink.add(Right(data));
            },
            handleError: (error, stackTrace, sink) {
              sink.add(Left(_mapper.getException(error)));
            },
          ),
        );
  }
}
