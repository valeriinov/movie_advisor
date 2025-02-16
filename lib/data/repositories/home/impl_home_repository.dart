import 'package:dartz/dartz.dart';

import '../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/repositories/home_repository.dart';
import '../../mappers/app_movies_mapper.dart';
import '../../mappers/app_series_mapper.dart';
import 'home_remote_data_source.dart';

class ImplHomeRepository implements HomeRepository {
  final HomeRemoteDataSource _dataSource;
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;

  ImplHomeRepository(
      {required HomeRemoteDataSource dataSource,
      required AppMoviesMapper moviesMapper,
      required AppSeriesMapper seriesMapper})
      : _dataSource = dataSource,
        _moviesMapper = moviesMapper,
        _seriesMapper = seriesMapper;

  @override
  Future<Result<PaginatedMovies>> getSuggestedMovies() async {
    try {
      final result = await _dataSource.getSuggestedMovies();

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getNowPlayingMovies(
      {required int page}) async {
    try {
      final result = await _dataSource.getNowPlayingMovies(page: page);

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getUpcomingMovies({required int page}) async {
    try {
      final result = await _dataSource.getUpcomingMovies(page: page);

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getTopRatedMovies({required int page}) async {
    try {
      final result = await _dataSource.getTopRatedMovies(page: page);

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getPopularMovies({required int page}) async {
    try {
      final result = await _dataSource.getPopularMovies(page: page);

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getSuggestedSeries() async {
    try {
      final result = await _dataSource.getSuggestedSeries();

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getNowPlayingSeries(
      {required int page}) async {
    try {
      final result = await _dataSource.getAiringTodaySeries(page: page);

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getUpcomingSeries({required int page}) async {
    try {
      final result = await _dataSource.getOnTheAirSeries(page: page);

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getTopRatedSeries({required int page}) async {
    try {
      final result = await _dataSource.getTopRatedSeries(page: page);

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getPopularSeries({required int page}) async {
    try {
      final result = await _dataSource.getPopularSeries(page: page);

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }
}
