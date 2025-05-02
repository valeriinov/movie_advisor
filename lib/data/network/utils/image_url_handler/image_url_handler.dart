import '../../../dto/movie/movie_data_dto.dart';
import '../../../dto/person/person_data_dto.dart';
import '../../../dto/series/series_data_dto.dart';

abstract interface class ImageUrlHandler {
  MovieDataDto handleMovieImages(MovieDataDto movie);

  SeriesDataDto handleSeriesImages(SeriesDataDto series);

  List<MovieDataDto> handleMoviesListImages(List<MovieDataDto> movies);

  List<SeriesDataDto> handleSeriesListImages(List<SeriesDataDto> series);

  PersonDataDto handlePersonImages(PersonDataDto person);
}
