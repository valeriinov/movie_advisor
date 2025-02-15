import '../../common/utils/ext/int/pagination_handler.dart';
import '../../domain/entities/pagination/list_with_pagination_data.dart';
import '../dto/movie/movies_response_data_dto.dart';
import '../dto/series/series_response_data_dto.dart';
import 'app_mapper.dart';
import 'app_movies_mapper.dart';
import 'app_series_mapper.dart';

final class AppPaginatedMediaMapper extends AppMapper {
  final AppMoviesMapper _moviesMapper;
  final AppSeriesMapper _seriesMapper;

  AppPaginatedMediaMapper({
    required AppMoviesMapper moviesMapper,
    required AppSeriesMapper seriesMapper,
  })  : _moviesMapper = moviesMapper,
        _seriesMapper = seriesMapper;

  PaginatedMovies mapMoviesResponseDataToDomain(MoviesResponseDataDto dto) {
    return PaginatedMovies(
      items: _moviesMapper.mapMovieDataListDtoToShortDomain(dto.results ?? []),
      currentPage: dto.page ?? 1,
      isLastPage: dto.page.isLastPage(dto.totalPages),
    );
  }

  PaginatedSeries mapSeriesResponseDataToDomain(SeriesResponseDataDto dto) {
    return PaginatedSeries(
      items: _seriesMapper.mapSeriesDataListDtoToShortDomain(dto.results ?? []),
      currentPage: dto.page ?? 1,
      isLastPage: dto.page.isLastPage(dto.totalPages),
    );
  }
}
