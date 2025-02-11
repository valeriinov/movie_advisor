import 'package:dartz/dartz.dart';

import '../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/repositories/home_repository.dart';
import '../../mappers/app_paginated_media_mapper.dart';
import 'home_remote_data_source.dart';

class ImplHomeRepository implements HomeRepository {
  final HomeRemoteDataSource _dataSource;
  final AppPaginatedMediaMapper _mapper;

  ImplHomeRepository(
      {required HomeRemoteDataSource dataSource, required AppPaginatedMediaMapper mapper})
      : _dataSource = dataSource,
        _mapper = mapper;

  @override
  Future<Result<PaginatedMovies>> getSuggestedMovies() async {
    try {
      final result = await _dataSource.getSuggestedMovies();

      return Right(_mapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getNowPlayingMovies(
      {required int page}) async {
    try {
      final result = await _dataSource.getNowPlayingMovies(page: page);

      return Right(_mapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getUpcomingMovies({required int page}) async {
    try {
      final result = await _dataSource.getUpcomingMovies(page: page);

      return Right(_mapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getTopRatedMovies({required int page}) async {
    try {
      final result = await _dataSource.getTopRatedMovies(page: page);

      return Right(_mapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getPopularMovies({required int page}) async {
    try {
      final result = await _dataSource.getPopularMovies(page: page);

      return Right(_mapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getSuggestedSeries() async {
    try {
      final result = await _dataSource.getSuggestedSeries();

      return Right(_mapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getNowPlayingSeries(
      {required int page}) async {
    try {
      final result = await _dataSource.getAiringTodaySeries(page: page);

      return Right(_mapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getUpcomingSeries({required int page}) async {
    try {
      final result = await _dataSource.getOnTheAirSeries(page: page);

      return Right(_mapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getTopRatedSeries({required int page}) async {
    try {
      final result = await _dataSource.getTopRatedSeries(page: page);

      return Right(_mapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getPopularSeries({required int page}) async {
    try {
      final result = await _dataSource.getPopularSeries(page: page);

      return Right(_mapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }
}
