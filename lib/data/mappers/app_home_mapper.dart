import '../../common/utils/ext/int/pagination_handler.dart';
import '../../domain/entities/movie/movie_short_data.dart';
import '../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../domain/entities/series/series_short_data.dart';
import '../dto/movie/movies_response_data_dto.dart';
import '../dto/series/series_response_data_dto.dart';
import 'app_mapper.dart';
import 'app_movies_mapper.dart';
import 'app_series_mapper.dart';

final class AppHomeMapper extends AppMapper {
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;

  AppHomeMapper({
    required AppMoviesMapper moviesMapper,
    required AppSeriesMapper seriesMapper,
  })  : _moviesMapper = moviesMapper,
        _seriesMapper = seriesMapper;

  ListWithPaginationData<MovieShortData> mapMoviesResponseDataToDomain(
      MoviesResponseDataDto dto) {
    return ListWithPaginationData<MovieShortData>(
      items: _moviesMapper.mapMovieShortDataListDtoToDomain(dto.results ?? []),
      currentPage: dto.page ?? 1,
      isLastPage: dto.page.isLastPage(dto.totalPages),
    );
  }

  ListWithPaginationData<SeriesShortData> mapSeriesResponseDataToDomain(
      SeriesResponseDataDto dto) {
    return ListWithPaginationData<SeriesShortData>(
      items: _seriesMapper.mapSeriesShortDataListDtoToDomain(dto.results ?? []),
      currentPage: dto.page ?? 1,
      isLastPage: dto.page.isLastPage(dto.totalPages),
    );
  }
}
