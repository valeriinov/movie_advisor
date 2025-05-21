import 'package:dartz/dartz.dart';

import '../../../domain/entities/filter/movies_filter_data.dart';
import '../../../domain/entities/filter/series_filter_data.dart';
import '../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/repositories/filter_repository.dart';
import '../../mappers/app_filter_mapper.dart';
import '../../mappers/app_movies_mapper.dart';
import '../../mappers/app_series_mapper.dart';
import '../media_local_data_source.dart';
import 'filter_local_data_source.dart';
import 'filter_remote_data_source.dart';

class ImplFilterRepository implements FilterRepository {
  final FilterRemoteDataSource _remoteDataSource;
  final FilterLocalDataSource _localDataSource;
  final MediaLocalDataSource _mediaLocalDataSource;
  final AppFilterMapper _filterMapper;
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;

  ImplFilterRepository({
    required FilterRemoteDataSource remoteDataSource,
    required FilterLocalDataSource localDataSource,
    required MediaLocalDataSource mediaLocalDataSource,
    required AppFilterMapper filterMapper,
    required AppMoviesMapper moviesMapper,
    required AppSeriesMapper seriesMapper,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource,
       _mediaLocalDataSource = mediaLocalDataSource,
       _filterMapper = filterMapper,
       _moviesMapper = moviesMapper,
       _seriesMapper = seriesMapper;

  @override
  Future<Result<MoviesFilterData?>> getSavedMoviesFilter() async {
    try {
      final result = await _localDataSource.getSavedMoviesFilter();

      return Right(_filterMapper.mapMoviesFilterDataDtoToDomain(result));
    } catch (e) {
      return Left(_filterMapper.getException(e));
    }
  }

  @override
  Future<Result<SeriesFilterData?>> getSavedSeriesFilter() async {
    try {
      final result = await _localDataSource.getSavedSeriesFilter();

      return Right(_filterMapper.mapSeriesFilterDataDtoToDomain(result));
    } catch (e) {
      return Left(_filterMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> saveMoviesFilter(MoviesFilterData filter) async {
    try {
      await _localDataSource.saveMoviesFilter(
        _filterMapper.mapMoviesFilterDataToDto(filter),
      );

      return const Right(null);
    } catch (e) {
      return Left(_filterMapper.getException(e));
    }
  }

  @override
  Future<Result<void>> saveSeriesFilter(SeriesFilterData filter) async {
    try {
      await _localDataSource.saveSeriesFilter(
        _filterMapper.mapSeriesFilterDataToDto(filter),
      );

      return const Right(null);
    } catch (e) {
      return Left(_filterMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedMovies>> filterMovies(
    MoviesFilterData filter, {
    required int page,
  }) async {
    try {
      final excludeIds = await _mediaLocalDataSource.getMoviesIds(
        includeWatched: !filter.includeWatched,
        includeWatchlist: !filter.includeWatchlist,
      );

      final response = await _remoteDataSource.filterMovies(
        _filterMapper.mapMoviesFilterDataToDto(filter),
        excludeIds: excludeIds,
        page: page,
      );

      final result = await _mediaLocalDataSource.addLocalDataToMoviesResponse(
        response,
      );

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_filterMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> filterSeries(
    SeriesFilterData filter, {
    required int page,
  }) async {
    try {
      final excludeIds = await _mediaLocalDataSource.getSeriesIds(
        includeWatched: !filter.includeWatched,
        includeWatchlist: !filter.includeWatchlist,
      );

      final response = await _remoteDataSource.filterSeries(
        _filterMapper.mapSeriesFilterDataToDto(filter),
        excludeIds: excludeIds,
        page: page,
      );

      final result = await _mediaLocalDataSource.addLocalDataToSeriesResponse(
        response,
      );

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_filterMapper.getException(e));
    }
  }
}
