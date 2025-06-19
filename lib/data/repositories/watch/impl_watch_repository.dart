import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../common/adapters/uuid_adapter/uuid_adapter.dart';
import '../../../domain/entities/failure.dart';
import '../../../domain/entities/movie/movie_short_data.dart';
import '../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/entities/series/series_short_data.dart';
import '../../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../../domain/entities/watched_filter/series_watched_filter_data.dart';
import '../../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../../domain/entities/watchlist_filter/series_watchlist_filter_data.dart';
import '../../../domain/repositories/watch_repository.dart';
import '../../dto/movie/movie_watch_event_data_dto.dart';
import '../../dto/series/series_watch_event_data_dto.dart';
import '../../dto/watch_event_type_dto.dart';
import '../../mappers/app_movies_mapper.dart';
import '../../mappers/app_series_mapper.dart';
import '../../mappers/app_watch_filters_mapper.dart';
import 'watch_local_data_source.dart';
import 'watch_remote_data_source.dart';

class ImplWatchRepository implements WatchRepository {
  final WatchLocalDataSource _localDataSource;
  final WatchRemoteDataSource _remoteDataSource;
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;
  final AppWatchFiltersMapper _watchFiltersMapper;
  final UuidAdapter _uuidAdapter;

  ImplWatchRepository({
    required WatchLocalDataSource localDataSource,
    required WatchRemoteDataSource remoteDataSource,
    required AppMoviesMapper moviesMapper,
    required AppSeriesMapper seriesMapper,
    required AppWatchFiltersMapper watchFiltersMapper,
    required UuidAdapter uuidAdapter,
  }) : _localDataSource = localDataSource,
       _remoteDataSource = remoteDataSource,
       _moviesMapper = moviesMapper,
       _seriesMapper = seriesMapper,
       _watchFiltersMapper = watchFiltersMapper,
       _uuidAdapter = uuidAdapter;

  @override
  Stream<Result<MovieShortData>> watchChangesMovies() {
    return _localDataSource.watchChangesMovies().transform(
      StreamTransformer.fromHandlers(
        handleData: (data, sink) =>
            sink.add(Right(_moviesMapper.mapMovieShortDataDtoToDomain(data))),
        handleError: (error, _, sink) =>
            sink.add(Left(Failure(message: error.toString()))),
      ),
    );
  }

  @override
  Stream<Result<SeriesShortData>> watchChangesSeries() {
    return _localDataSource.watchChangesSeries().transform(
      StreamTransformer.fromHandlers(
        handleData: (data, sink) =>
            sink.add(Right(_seriesMapper.mapSeriesShortDataDtoToDomain(data))),
        handleError: (error, _, sink) =>
            sink.add(Left(Failure(message: error.toString()))),
      ),
    );
  }

  @override
  Future<Result<PaginatedMovies>> getWatchlistMovies({
    required int page,
    required MoviesWatchlistFilterData filter,
  }) async {
    try {
      final result = await _localDataSource.getWatchlistMovies(
        page: page,
        filter: _watchFiltersMapper.mapMoviesWatchlistFilterDataToDto(filter),
      );

      return Right(_moviesMapper.mapMoviesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getWatchedMovies({
    required int page,
    required MoviesWatchedFilterData filter,
  }) async {
    try {
      final result = await _localDataSource.getWatchedMovies(
        page: page,
        filter: _watchFiltersMapper.mapMoviesWatchedFilterDataToDto(filter),
      );

      return Right(_moviesMapper.mapMoviesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getWatchlistSeries({
    required int page,
    required SeriesWatchlistFilterData filter,
  }) async {
    try {
      final result = await _localDataSource.getWatchlistSeries(
        page: page,
        filter: _watchFiltersMapper.mapSeriesWatchlistFilterDataToDto(filter),
      );

      return Right(_seriesMapper.mapSeriesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getWatchedSeries({
    required int page,
    required SeriesWatchedFilterData filter,
  }) async {
    try {
      final result = await _localDataSource.getWatchedSeries(
        page: page,
        filter: _watchFiltersMapper.mapSeriesWatchedFilterDataToDto(filter),
      );

      return Right(_seriesMapper.mapSeriesShortResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> addToWatchlistMovie(MovieShortData data) async {
    try {
      final preparedData = data.copyWith(
        isInWatchlist: true,
        watchlistAddedAt: DateTime.now(),
      );
      final dto = _moviesMapper.mapMovieShortDataToDto(preparedData);

      final preparedDto = await _remoteDataSource.getLocalizedMovie(dto);

      await _localDataSource.addToWatchlistMovie(preparedDto);

      await _remoteDataSource.addToWatchlistMovie(preparedDto);

      await _addMovieEvent(preparedDto.id, WatchEventTypeDto.watchlistAdd);

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
      MovieShortData preparedData = data.copyWith(
        isWatched: true,
        lastWatchedAt: DateTime.now(),
      );

      if (deleteFromWatchlistIfExists && preparedData.isInWatchlist) {
        preparedData = preparedData.copyWith(isInWatchlist: false);
      }

      final dto = _moviesMapper.mapMovieShortDataToDto(preparedData);

      final preparedDto = await _remoteDataSource.getLocalizedMovie(dto);

      await _localDataSource.addToWatchedMovie(preparedDto);

      await _remoteDataSource.addToWatchedMovie(preparedDto);

      await _addMovieEvent(preparedDto.id, WatchEventTypeDto.watch);

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

      await _addMovieEvent(id, WatchEventTypeDto.watchlistRemove);

      return Right(null);
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  Future<void> _addMovieEvent(int? tmdbId, WatchEventTypeDto type) async {
    if (tmdbId == null) return;

    final event = MovieWatchEventDataDto(
      id: _uuidAdapter.v4(),
      tmdbId: tmdbId,
      type: type,
      at: DateTime.now(),
    );

    await _localDataSource.addMovieEvent(event);

    await _remoteDataSource.addMovieEvent(event);
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
      final preparedData = data.copyWith(
        isInWatchlist: true,
        watchlistAddedAt: DateTime.now(),
      );
      final dto = _seriesMapper.mapSeriesShortDataToDto(preparedData);

      final preparedDto = await _remoteDataSource.getLocalizedSeries(dto);

      await _localDataSource.addToWatchlistSeries(preparedDto);

      await _remoteDataSource.addToWatchlistSeries(preparedDto);

      await _addSeriesEvent(preparedDto.id, WatchEventTypeDto.watchlistAdd);

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
      SeriesShortData preparedData = data.copyWith(
        isWatched: true,
        lastWatchedAt: DateTime.now(),
      );

      if (deleteFromWatchlistIfExists && preparedData.isInWatchlist) {
        preparedData = preparedData.copyWith(isInWatchlist: false);
      }

      final dto = _seriesMapper.mapSeriesShortDataToDto(preparedData);

      final preparedDto = await _remoteDataSource.getLocalizedSeries(dto);

      await _localDataSource.addToWatchedSeries(preparedDto);

      await _remoteDataSource.addToWatchedSeries(preparedDto);

      await _addSeriesEvent(preparedDto.id, WatchEventTypeDto.watch);

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

      await _addSeriesEvent(id, WatchEventTypeDto.watchlistRemove);

      return Right(null);
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  Future<void> _addSeriesEvent(int? tmdbId, WatchEventTypeDto type) async {
    if (tmdbId == null) return;

    final event = SeriesWatchEventDataDto(
      id: _uuidAdapter.v4(),
      tmdbId: tmdbId,
      type: type,
      at: DateTime.now(),
    );

    await _localDataSource.addSeriesEvent(event);

    await _remoteDataSource.addSeriesEvent(event);
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
