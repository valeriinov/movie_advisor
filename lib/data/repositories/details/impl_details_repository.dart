import 'package:dartz/dartz.dart';

import '../../../domain/entities/movie/movie_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/entities/series/series_data.dart';
import '../../../domain/repositories/details_repository.dart';
import '../../mappers/app_movies_mapper.dart';
import '../../mappers/app_series_mapper.dart';
import '../../utils/media_remote_local_merger/media_merger.dart';
import '../media_local_data_source.dart';
import 'details_remote_data_source.dart';

class ImplDetailsRepository implements DetailsRepository {
  final DetailsRemoteDataSource _dataSource;
  final MediaLocalDataSource _localDataSource;
  final MediaMerger _mediaMerger;
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;

  ImplDetailsRepository(
      {required DetailsRemoteDataSource dataSource,
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
  Future<Result<MovieData>> getDetailsMovie(int id) async {
    try {
      final remoteMovie = await _dataSource.getDetailsMovie(id);
      final localMovie =
          (await _localDataSource.getMoviesByIds([id])).firstOrNull;


      final result = localMovie != null
          ? _mediaMerger.mergeMovie(remoteMovie, localMovie)
          : remoteMovie;

      return Right(_moviesMapper.mapMovieDataDtoToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<SeriesData>> getDetailsSeries(int id) async {
    try {
      final remoteSeries = await _dataSource.getDetailsSeries(id);
      final localSeries =
          (await _localDataSource.getSeriesByIds([id])).firstOrNull;

      final result = localSeries != null
          ? _mediaMerger.mergeSeries(remoteSeries, localSeries)
          : remoteSeries;

      return Right(_seriesMapper.mapSeriesDataDtoToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }
}
