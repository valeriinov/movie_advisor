import 'package:dartz/dartz.dart';

import '../../../domain/entities/result.dart';
import '../../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../../domain/entities/watchlist_filter/series_watchlist_filter_data.dart';
import '../../../domain/repositories/watchlist_filter_repository.dart';
import '../../mappers/app_watch_filters_mapper.dart';
import 'watchlist_filter_local_data_source.dart';

class ImplWatchlistFilterRepository implements WatchlistFilterRepository {
  final WatchlistFilterLocalDataSource _dataSource;
  final AppWatchFiltersMapper _mapper;

  ImplWatchlistFilterRepository({
    required WatchlistFilterLocalDataSource dataSource,
    required AppWatchFiltersMapper mapper,
  }) : _dataSource = dataSource,
       _mapper = mapper;

  @override
  Future<Result<void>> saveMoviesFilter(
    MoviesWatchlistFilterData filter,
  ) async {
    try {
      await _dataSource.saveMoviesFilter(
        _mapper.mapMoviesWatchlistFilterDataToDto(filter),
      );

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<void>> saveSeriesFilter(
    SeriesWatchlistFilterData filter,
  ) async {
    try {
      await _dataSource.saveSeriesFilter(
        _mapper.mapSeriesWatchlistFilterDataToDto(filter),
      );

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<MoviesWatchlistFilterData?>> getSavedMoviesFilter() async {
    try {
      final filterDto = await _dataSource.getSavedMoviesFilter();

      return Right(_mapper.mapMoviesWatchlistFilterDataDtoToDomain(filterDto));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<SeriesWatchlistFilterData?>> getSavedSeriesFilter() async {
    try {
      final filterDto = await _dataSource.getSavedSeriesFilter();

      return Right(_mapper.mapSeriesWatchlistFilterDataDtoToDomain(filterDto));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }
}
