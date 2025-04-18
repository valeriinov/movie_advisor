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
import 'watch_remote_data_source.dart';

class ImplWatchRepository implements WatchRepository {
  final WatchLocalDataSource _localDataSource;
  final WatchRemoteDataSource _remoteDataSource;
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;

  ImplWatchRepository({
    required WatchLocalDataSource localDataSource,
    required WatchRemoteDataSource remoteDataSource,
    required AppMoviesMapper moviesMapper,
    required AppSeriesMapper seriesMapper,
  }) : _localDataSource = localDataSource,
       _remoteDataSource = remoteDataSource,
       _moviesMapper = moviesMapper,
       _seriesMapper = seriesMapper;

  @override
  Stream<Result<MovieShortData>> watchChangesMovies() {
    return _localDataSource.watchChangesMovies().transform(
      StreamTransformer.fromHandlers(
        handleData:
            (data, sink) => sink.add(
              Right(_moviesMapper.mapMovieShortDataDtoToDomain(data)),
            ),
        handleError:
            (error, _, sink) =>
                sink.add(Left(Failure(message: error.toString()))),
      ),
    );
  }

  @override
  Stream<Result<SeriesShortData>> watchChangesSeries() {
    return _localDataSource.watchChangesSeries().transform(
      StreamTransformer.fromHandlers(
        handleData:
            (data, sink) => sink.add(
              Right(_seriesMapper.mapSeriesShortDataDtoToDomain(data)),
            ),
        handleError:
            (error, _, sink) =>
                sink.add(Left(Failure(message: error.toString()))),
      ),
    );
  }

  @override
  Future<Result<PaginatedMovies>> getWatchlistMovies({
    required int page,
  }) async {
    try {
      final result = await _localDataSource.getWatchlistMovies(page: page);

      return Right(_moviesMapper.mapMoviesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getWatchedMovies({required int page}) async {
    try {
      final result = await _localDataSource.getWatchedMovies(page: page);

      return Right(_moviesMapper.mapMoviesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getWatchlistSeries({
    required int page,
  }) async {
    try {
      final result = await _localDataSource.getWatchlistSeries(page: page);

      return Right(_seriesMapper.mapSeriesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getWatchedSeries({required int page}) async {
    try {
      final result = await _localDataSource.getWatchedSeries(page: page);

      return Right(_seriesMapper.mapSeriesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> addToWatchlistMovie(MovieShortData data) async {
    try {
      final preparedData = data.copyWith(isInWatchlist: true);
      final dto = _moviesMapper.mapMovieShortDataToDto(preparedData);

      final preparedDto = await _remoteDataSource.getLocalizedMovie(dto);

      await _localDataSource.addToWatchlistMovie(preparedDto);

      await _remoteDataSource.addToWatchlistMovie(preparedDto);

      return Right(null);
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> addToWatchedMovie(
    MovieShortData data, {
    required bool deleteFromWatchlistIfExists,
  }) async {
    try {
      MovieShortData preparedData = data.copyWith(isWatched: true);

      if (deleteFromWatchlistIfExists && preparedData.isInWatchlist) {
        preparedData = preparedData.copyWith(isInWatchlist: false);
      }

      final dto = _moviesMapper.mapMovieShortDataToDto(preparedData);

      final preparedDto = await _remoteDataSource.getLocalizedMovie(dto);

      await _localDataSource.addToWatchedMovie(preparedDto);

      await _remoteDataSource.addToWatchedMovie(preparedDto);

      return Right(null);
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> removeFromWatchlistMovie(int id) async {
    try {
      await _localDataSource.removeFromWatchlistMovie(id);

      await _remoteDataSource.removeFromWatchlistMovie(id);

      return Right(null);
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> removeFromWatchedMovie(int id) async {
    try {
      await _localDataSource.removeFromWatchedMovie(id);

      await _remoteDataSource.removeFromWatchedMovie(id);

      return Right(null);
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> addToWatchlistSeries(SeriesShortData data) async {
    try {
      final preparedData = data.copyWith(isInWatchlist: true);
      final dto = _seriesMapper.mapSeriesShortDataToDto(preparedData);

      final preparedDto = await _remoteDataSource.getLocalizedSeries(dto);

      await _localDataSource.addToWatchlistSeries(preparedDto);

      await _remoteDataSource.addToWatchlistSeries(preparedDto);

      return Right(null);
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> addToWatchedSeries(
    SeriesShortData data, {
    required bool deleteFromWatchlistIfExists,
  }) async {
    try {
      SeriesShortData preparedData = data.copyWith(isWatched: true);

      if (deleteFromWatchlistIfExists && preparedData.isInWatchlist) {
        preparedData = preparedData.copyWith(isInWatchlist: false);
      }

      final dto = _seriesMapper.mapSeriesShortDataToDto(preparedData);

      final preparedDto = await _remoteDataSource.getLocalizedSeries(dto);

      await _localDataSource.addToWatchedSeries(preparedDto);

      await _remoteDataSource.addToWatchedSeries(preparedDto);

      return Right(null);
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> removeFromWatchlistSeries(int id) async {
    try {
      await _localDataSource.removeFromWatchlistSeries(id);

      await _remoteDataSource.removeFromWatchlistSeries(id);

      return Right(null);
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> removeFromWatchedSeries(int id) async {
    try {
      await _localDataSource.removeFromWatchedSeries(id);

      await _remoteDataSource.removeFromWatchedSeries(id);

      return Right(null);
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }
}
