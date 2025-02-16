import '../dto/movie/movie_short_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';

abstract interface class MediaLocalDataSource {
  Future<List<MovieShortDataDto>> getMoviesByIds(List<int> ids);

  Future<List<SeriesShortDataDto>> getSeriesByIds(List<int> ids);
}
