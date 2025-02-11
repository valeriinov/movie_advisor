import 'package:dartz/dartz.dart';

import '../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/entities/search/search_filter_data.dart';
import '../../../domain/repositories/search_repository.dart';
import '../../mappers/app_paginated_media_mapper.dart';
import '../../mappers/app_search_mapper.dart';
import 'search_remote_data_source.dart';

class ImplSearchRepository implements SearchRepository {
  final SearchRemoteDataSource _dataSource;
  final AppSearchMapper _searchMapper;
  final AppPaginatedMediaMapper _mediaMapper;

  ImplSearchRepository(
      {required SearchRemoteDataSource dataSource,
      required AppSearchMapper searchMapper,
      required AppPaginatedMediaMapper mediaMapper})
      : _dataSource = dataSource,
        _searchMapper = searchMapper,
        _mediaMapper = mediaMapper;

  @override
  Future<Result<PaginatedMovies>> searchMovies(SearchFilterData filter,
      {required int page}) async {
    try {
      final result = await _dataSource.searchMovies(
        _searchMapper.mapSearchFilterDataToDto(filter),
        page: page,
      );

      return Right(_mediaMapper.mapMoviesResponseDataToDomain(result));
    } catch (e) {
      return Left(_searchMapper.getException(e));
    }
  }

  @override
  Future<Result<PaginatedSeries>> searchSeries(SearchFilterData filter,
      {required int page}) async {
    try {
      final result = await _dataSource.searchSeries(
        _searchMapper.mapSearchFilterDataToDto(filter),
        page: page,
      );

      return Right(_mediaMapper.mapSeriesResponseDataToDomain(result));
    } catch (e) {
      return Left(_searchMapper.getException(e));
    }
  }
}
