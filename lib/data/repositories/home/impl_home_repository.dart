import 'package:dartz/dartz.dart';

import '../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/repositories/home_repository.dart';
import '../../dto/movie/movie_short_data_dto.dart';
import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/series/series_response_data_dto.dart';
import '../../dto/series/series_short_data_dto.dart';
import '../../mappers/app_movies_mapper.dart';
import '../../mappers/app_series_mapper.dart';
import '../../utils/media_remote_local_merger/media_merger.dart';
import '../media_local_data_source.dart';
import 'home_remote_data_source.dart';

class ImplHomeRepository implements HomeRepository {
  final HomeRemoteDataSource _dataSource;
  final MediaLocalDataSource _localDataSource;
  final MediaMerger _mediaMerger;
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;

  ImplHomeRepository(
      {required HomeRemoteDataSource dataSource,
      required MediaLocalDataSource localDataSource,
      required MediaMerger mediaMerger,
      required AppMoviesMapper moviesMapper,
      required AppSeriesMapper seriesMapper})
      : _dataSource = dataSource,
        _localDataSource = localDataSource,
        _mediaMerger = mediaMerger,
        _moviesMapper = moviesMapper,
        _seriesMapper = seriesMapper;

  @override
  Future<Result<PaginatedMovies>> getSuggestedMovies() async {
    try {
      final response = await _dataSource.getSuggestedMovies();

      final result = await _handleMoviesResponse(response);

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getNowPlayingMovies(
      {required int page}) async {
    try {
      final response = await _dataSource.getNowPlayingMovies(page: page);

      final result = await _handleMoviesResponse(response);

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getUpcomingMovies({required int page}) async {
    try {
      final response = await _dataSource.getUpcomingMovies(page: page);

      final result = await _handleMoviesResponse(response);

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getTopRatedMovies({required int page}) async {
    try {
      final response = await _dataSource.getTopRatedMovies(page: page);

      final result = await _handleMoviesResponse(response);

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> getPopularMovies({required int page}) async {
    try {
      final response = await _dataSource.getPopularMovies(page: page);

      final result = await _handleMoviesResponse(response);

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  Future<MoviesResponseDataDto> _handleMoviesResponse(
      MoviesResponseDataDto response) async {
    final remoteMovies = response.results ?? [];
    final ids = remoteMovies.map((e) => e.id).nonNulls.toList();

    final List<MovieShortDataDto> localMovies =
        ids.isNotEmpty ? await _localDataSource.getMoviesByIds(ids) : [];

    return response.copyWith(
      results: _mediaMerger.mergeMoviesList(remoteMovies, localMovies),
    );
  }

  @override
  Future<Result<PaginatedSeries>> getSuggestedSeries() async {
    try {
      final response = await _dataSource.getSuggestedSeries();

      final result = await _handleSeriesResponse(response);

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getNowPlayingSeries(
      {required int page}) async {
    try {
      final response = await _dataSource.getAiringTodaySeries(page: page);

      final result = await _handleSeriesResponse(response);

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getUpcomingSeries({required int page}) async {
    try {
      final response = await _dataSource.getOnTheAirSeries(page: page);

      final result = await _handleSeriesResponse(response);

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getTopRatedSeries({required int page}) async {
    try {
      final response = await _dataSource.getTopRatedSeries(page: page);

      final result = await _handleSeriesResponse(response);

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> getPopularSeries({required int page}) async {
    try {
      final response = await _dataSource.getPopularSeries(page: page);

      final result = await _handleSeriesResponse(response);

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }

  Future<SeriesResponseDataDto> _handleSeriesResponse(
      SeriesResponseDataDto response) async {
    final remoteSeries = response.results ?? [];
    final ids = remoteSeries.map((e) => e.id).nonNulls.toList();

    final List<SeriesShortDataDto> localSeries =
        ids.isNotEmpty ? await _localDataSource.getSeriesByIds(ids) : [];

    return response.copyWith(
      results: _mediaMerger.mergeSeriesList(remoteSeries, localSeries),
    );
  }
}
