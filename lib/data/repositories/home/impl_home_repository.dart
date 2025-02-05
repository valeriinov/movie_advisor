import 'package:dartz/dartz.dart';

import '../../../domain/entities/movie/movie_short_data.dart';
import '../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/entities/series/series_short_data.dart';
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
  Future<Result<ListWithPaginationData<MovieShortData>>>
      getSuggestedMovies() async {
    try {
      final result = await _dataSource.getSuggestedMovies();

      return Right(_mapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<ListWithPaginationData<MovieShortData>>> getNowPlayingMovies(
      {required int page}) async {
    try {
      final result = await _dataSource.getNowPlayingMovies(page: page);

      return Right(_mapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<ListWithPaginationData<MovieShortData>>> getUpcomingMovies(
      {required int page}) async {
    try {
      final result = await _dataSource.getUpcomingMovies(page: page);

      return Right(_mapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<ListWithPaginationData<MovieShortData>>> getTopRatedMovies(
      {required int page}) async {
    try {
      final result = await _dataSource.getTopRatedMovies(page: page);

      return Right(_mapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<ListWithPaginationData<MovieShortData>>> getPopularMovies(
      {required int page}) async {
    try {
      final result = await _dataSource.getPopularMovies(page: page);

      return Right(_mapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<ListWithPaginationData<SeriesShortData>>>
      getSuggestedSeries() async {
    try {
      final result = await _dataSource.getSuggestedSeries();

      return Right(_mapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<ListWithPaginationData<SeriesShortData>>> getAiringTodaySeries(
      {required int page}) async {
    try {
      final result = await _dataSource.getAiringTodaySeries(page: page);

      return Right(_mapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<ListWithPaginationData<SeriesShortData>>> getOnTheAirSeries(
      {required int page}) async {
    try {
      final result = await _dataSource.getOnTheAirSeries(page: page);

      return Right(_mapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<ListWithPaginationData<SeriesShortData>>> getTopRatedSeries(
      {required int page}) async {
    try {
      final result = await _dataSource.getTopRatedSeries(page: page);

      return Right(_mapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<ListWithPaginationData<SeriesShortData>>> getPopularSeries(
      {required int page}) async {
    try {
      final result = await _dataSource.getPopularSeries(page: page);

      return Right(_mapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }
}
