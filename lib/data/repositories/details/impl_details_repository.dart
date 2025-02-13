import 'package:dartz/dartz.dart';

import '../../../domain/entities/movie/movie_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/entities/series/series_data.dart';
import '../../../domain/repositories/details_repository.dart';
import '../../mappers/app_movies_mapper.dart';
import '../../mappers/app_series_mapper.dart';
import 'details_remote_data_source.dart';

class ImplDetailsRepository implements DetailsRepository {
  final DetailsRemoteDataSource _dataSource;
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;

  ImplDetailsRepository(
      {required DetailsRemoteDataSource dataSource,
      required AppMoviesMapper moviesMapper,
      required AppSeriesMapper seriesMapper})
      : _dataSource = dataSource,
        _moviesMapper = moviesMapper,
        _seriesMapper = seriesMapper;

  @override
  Future<Result<MovieData>> getDetailsMovie(int id) async {
    try {
      final result = await _dataSource.getDetailsMovie(id);

      return Right(_moviesMapper.mapMovieDataDtoToDomain(result));
    } catch (e) {
      return Left(_moviesMapper.getException(e));
    }
  }

  @override
  Future<Result<SeriesData>> getDetailsSeries(int id) async {
    try {
      final result = await _dataSource.getDetailsSeries(id);

      return Right(_seriesMapper.mapSeriesDataDtoToDomain(result));
    } catch (e) {
      return Left(_seriesMapper.getException(e));
    }
  }
}
