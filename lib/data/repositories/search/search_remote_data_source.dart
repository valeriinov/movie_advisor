import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/search/search_filter_data_dto.dart';
import '../../dto/series/series_response_data_dto.dart';

abstract interface class SearchRemoteDataSource {
  Future<MoviesResponseDataDto> searchMovies(
    SearchFilterDataDto filter, {
    required int page,
  });

  Future<SeriesResponseDataDto> searchSeries(
    SearchFilterDataDto filter, {
    required int page,
  });
}
