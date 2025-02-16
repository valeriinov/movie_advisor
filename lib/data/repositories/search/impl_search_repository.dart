import 'package:dartz/dartz.dart';

import '../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/entities/search/search_filter_data.dart';
import '../../../domain/repositories/search_repository.dart';
import '../../dto/movie/movie_short_data_dto.dart';
import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/series/series_response_data_dto.dart';
import '../../dto/series/series_short_data_dto.dart';
import '../../mappers/app_movies_mapper.dart';
import '../../mappers/app_search_mapper.dart';
import '../../mappers/app_series_mapper.dart';
import '../../utils/media_remote_local_merger/media_merger.dart';
import '../media_local_data_source.dart';
import 'search_remote_data_source.dart';

class ImplSearchRepository implements SearchRepository {
  final SearchRemoteDataSource _dataSource;
  final MediaLocalDataSource _localDataSource;
  final MediaMerger _mediaMerger;
  final AppSearchMapper _searchMapper;
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;

  ImplSearchRepository(
      {required SearchRemoteDataSource dataSource,
      required MediaLocalDataSource localDataSource,
      required MediaMerger mediaMerger,
      required AppSearchMapper searchMapper,
      required AppMoviesMapper moviesMapper,
      required AppSeriesMapper seriesMapper})
      : _dataSource = dataSource,
        _localDataSource = localDataSource,
        _mediaMerger = mediaMerger,
        _searchMapper = searchMapper,
        _moviesMapper = moviesMapper,
        _seriesMapper = seriesMapper;

  @override
  Future<Result<PaginatedMovies>> searchMovies(SearchFilterData filter,
      {required int page}) async {
    try {
      final response = await _dataSource.searchMovies(
        _searchMapper.mapSearchFilterDataToDto(filter),
        page: page,
      );

      final result = await _handleMoviesResponse(response);

      return Right(_moviesMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_searchMapper.getException(e));
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
  Future<Result<PaginatedSeries>> searchSeries(SearchFilterData filter,
      {required int page}) async {
    try {
      final response = await _dataSource.searchSeries(
        _searchMapper.mapSearchFilterDataToDto(filter),
        page: page,
      );

      final result = await _handleSeriesResponse(response);

      return Right(_seriesMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_searchMapper.getException(e));
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
