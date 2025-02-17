import '../../dto/movie/movie_data_dto.dart';
import '../../dto/movie/movie_short_data_dto.dart';
import '../../dto/series/series_data_dto.dart';
import '../../dto/series/series_short_data_dto.dart';

abstract interface class MediaMerger {
  List<MovieDataDto> mergeMoviesList(
    List<MovieDataDto> remoteMovies,
    List<MovieShortDataDto> localMovies,
  );

  List<SeriesDataDto> mergeSeriesList(
    List<SeriesDataDto> remoteSeries,
    List<SeriesShortDataDto> localSeries,
  );

  MovieDataDto mergeMovie(
    MovieDataDto remoteMovie,
    MovieShortDataDto localMovie,
  );

  SeriesDataDto mergeSeries(
    SeriesDataDto remoteSeries,
    SeriesShortDataDto localSeries,
  );
}
