import 'package:dartz/dartz.dart';

import '../../../domain/entities/result.dart';
import '../../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../../domain/entities/watched_filter/series_watched_filter_data.dart';
import '../../../domain/repositories/watched_filter_repository.dart';
import '../../mappers/app_watch_filters_mapper.dart';
import 'watched_filter_local_data_source.dart';

class ImplWatchedFilterRepository implements WatchedFilterRepository {
  final WatchedFilterLocalDataSource _dataSource;
  final AppWatchFiltersMapper _mapper;

  ImplWatchedFilterRepository({
    required WatchedFilterLocalDataSource dataSource,
    required AppWatchFiltersMapper mapper,
  }) : _dataSource = dataSource,
       _mapper = mapper;

  @override
  Future<Result<void>> saveMoviesFilter(MoviesWatchedFilterData filter) async {
    try {
      await _dataSource.saveMoviesFilter(
        _mapper.mapMoviesWatchedFilterDataToDto(filter),
      );

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<void>> saveSeriesFilter(SeriesWatchedFilterData filter) async {
    try {
      await _dataSource.saveSeriesFilter(
        _mapper.mapSeriesWatchedFilterDataToDto(filter),
      );

      return Right(null);
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<MoviesWatchedFilterData?>> getSavedMoviesFilter() async {
    try {
      final filterDto = await _dataSource.getSavedMoviesFilter();

      return Right(_mapper.mapMoviesWatchedFilterDataDtoToDomain(filterDto));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }

  @override
  Future<Result<SeriesWatchedFilterData?>> getSavedSeriesFilter() async {
    try {
      final filterDto = await _dataSource.getSavedSeriesFilter();

      return Right(_mapper.mapSeriesWatchedFilterDataDtoToDomain(filterDto));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }
}
