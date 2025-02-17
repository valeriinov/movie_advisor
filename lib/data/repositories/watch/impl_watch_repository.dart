import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../domain/entities/failure.dart';
import '../../../domain/entities/movie/movie_short_data.dart';
import '../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/entities/series/series_short_data.dart';
import '../../../domain/repositories/watch_repository.dart';
import '../../mappers/app_movies_mapper.dart';
import '../../mappers/app_series_mapper.dart';
import 'watch_local_data_source.dart';

class ImplWatchRepository implements WatchRepository {
  final WatchLocalDataSource _dataSource;
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;

  ImplWatchRepository(
      {required WatchLocalDataSource dataSource,
      required AppMoviesMapper moviesMapper,
      required AppSeriesMapper seriesMapper})
      : _dataSource = dataSource,
        _moviesMapper = moviesMapper,
        _seriesMapper = seriesMapper;

  @override
  Stream<Result<MovieShortData>> watchChangesMovies() {
    return _dataSource.watchChangesMovies().transform(
          StreamTransformer.fromHandlers(
            handleData: (data, sink) => sink
                .add(Right(_moviesMapper.mapMovieShortDataDtoToDomain(data))),
            handleError: (error, _, sink) =>
                sink.add(Left(Failure(message: error.toString()))),
          ),
        );
  }

  @override
  Stream<Result<SeriesShortData>> watchChangesSeries() {
    return _dataSource.watchChangesSeries().transform(
          StreamTransformer.fromHandlers(
            handleData: (data, sink) => sink
                .add(Right(_seriesMapper.mapSeriesShortDataDtoToDomain(data))),
            handleError: (error, _, sink) =>
                sink.add(Left(Failure(message: error.toString()))),
          ),
        );
  }

  @override
  Future<Result<PaginatedMovies>> getWatchlistMovies(
      {required int page}) async {
    try {
      final result = await _dataSource.getWatchlistMovies(page: page);

      return Right(_moviesMapper.mapMoviesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getWatchedMovies({required int page}) async {
    try {
      final result = await _dataSource.getWatchedMovies(page: page);

      return Right(_moviesMapper.mapMoviesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getWatchlistSeries(
      {required int page}) async {
    try {
      final result = await _dataSource.getWatchlistSeries(page: page);

      return Right(_seriesMapper.mapSeriesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getWatchedSeries({required int page}) async {
    try {
      final result = await _dataSource.getWatchedSeries(page: page);

      return Right(_seriesMapper.mapSeriesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> addToWatchlistMovie(MovieShortData data) async {
    try {
      await _dataSource
          .addToWatchlistMovie(_moviesMapper.mapMovieShortDataToDto(data));

      return Right(null);
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> addToWatchedMovie(MovieShortData data) async {
    try {
      await _dataSource
          .addToWatchedMovie(_moviesMapper.mapMovieShortDataToDto(data));

      return Right(null);
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> removeFromWatchlistMovie(int id) async {
    try {
      await _dataSource.removeFromWatchlistMovie(id);

      return Right(null);
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> removeFromWatchedMovie(int id) async {
    try {
      await _dataSource.removeFromWatchedMovie(id);

      return Right(null);
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> addToWatchlistSeries(SeriesShortData data) async {
    try {
      await _dataSource
          .addToWatchlistSeries(_seriesMapper.mapSeriesShortDataToDto(data));

      return Right(null);
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> addToWatchedSeries(SeriesShortData data) async {
    try {
      await _dataSource
          .addToWatchedSeries(_seriesMapper.mapSeriesShortDataToDto(data));

      return Right(null);
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> removeFromWatchlistSeries(int id) async {
    try {
      await _dataSource.removeFromWatchlistSeries(id);

      return Right(null);
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> removeFromWatchedSeries(int id) async {
    try {
      await _dataSource.removeFromWatchedSeries(id);

      return Right(null);
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }
}
