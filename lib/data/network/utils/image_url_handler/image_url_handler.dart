import '../../../dto/movie/movie_data_dto.dart';
import '../../../dto/series/series_data_dto.dart';

abstract interface class ImageUrlHandler {
  List<MovieDataDto> handleMoviesImages(List<MovieDataDto> movies);

  List<SeriesDataDto> handleSeriesImages(List<SeriesDataDto> series);
}
