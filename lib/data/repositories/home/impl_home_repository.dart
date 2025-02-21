import 'package:dartz/dartz.dart';

import '../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/repositories/home_repository.dart';
import '../../mappers/app_movies_mapper.dart';
import '../../mappers/app_series_mapper.dart';
import '../media_local_data_source.dart';
import 'home_remote_data_source.dart';

class ImplHomeRepository implements HomeRepository {
  final HomeRemoteDataSource _dataSource;
  final MediaLocalDataSource _localDataSource;
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;

  ImplHomeRepository({
    required HomeRemoteDataSource dataSource,
    required MediaLocalDataSource localDataSource,
    required AppMoviesMapper moviesMapper,
    required AppSeriesMapper seriesMapper,
  }) : _dataSource = dataSource,
       _localDataSource = localDataSource,
       _moviesMapper = moviesMapper,
       _seriesMapper = seriesMapper;

  @override
  Future<Result<PaginatedMovies>> getSuggestedMovies() async {
    try {
      final filter = await _localDataSource.getMovieRateFilter();

      final response = await _dataSource.getSuggestedMovies(filter);

      final result = await _localDataSource.addLocalDataToMoviesResponse(
        response,
      );

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getNowPlayingMovies({
    required int page,
  }) async {
    try {
      final response = await _dataSource.getNowPlayingMovies(page: page);

      final result = await _localDataSource.addLocalDataToMoviesResponse(
        response,
      );

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getUpcomingMovies({required int page}) async {
    try {
      final response = await _dataSource.getUpcomingMovies(page: page);

      final result = await _localDataSource.addLocalDataToMoviesResponse(
        response,
      );

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getTopRatedMovies({required int page}) async {
    try {
      final response = await _dataSource.getTopRatedMovies(page: page);

      final result = await _localDataSource.addLocalDataToMoviesResponse(
        response,
      );

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getPopularMovies({required int page}) async {
    try {
      final response = await _dataSource.getPopularMovies(page: page);

      final result = await _localDataSource.addLocalDataToMoviesResponse(
        response,
      );

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getSuggestedSeries() async {
    try {
      final filter = await _localDataSource.getSeriesRateFilter();

      final response = await _dataSource.getSuggestedSeries(filter);

      final result = await _localDataSource.addLocalDataToSeriesResponse(
        response,
      );

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getNowPlayingSeries({
    required int page,
  }) async {
    try {
      final response = await _dataSource.getAiringTodaySeries(page: page);

      final result = await _localDataSource.addLocalDataToSeriesResponse(
        response,
      );

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getUpcomingSeries({required int page}) async {
    try {
      final response = await _dataSource.getOnTheAirSeries(page: page);

      final result = await _localDataSource.addLocalDataToSeriesResponse(
        response,
      );

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getTopRatedSeries({required int page}) async {
    try {
      final response = await _dataSource.getTopRatedSeries(page: page);

      final result = await _localDataSource.addLocalDataToSeriesResponse(
        response,
      );

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getPopularSeries({required int page}) async {
    try {
      final response = await _dataSource.getPopularSeries(page: page);

      final result = await _localDataSource.addLocalDataToSeriesResponse(
        response,
      );

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }
}
