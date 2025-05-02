import '../../dto/movie/movie_data_dto.dart';
import '../../dto/movie/movie_short_data_dto.dart';
import '../../dto/person/person_mov_cred_data_dto.dart';
import '../../dto/person/person_ser_cred_data_dto.dart';
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

  List<PersonMovCredDataDto> mergePersonMovieCredits(
    List<PersonMovCredDataDto> remoteCredits,
    List<MovieShortDataDto> localMovies,
  );

  List<PersonSerCredDataDto> mergePersonSeriesCredits(
    List<PersonSerCredDataDto> remoteCredits,
    List<SeriesShortDataDto> localSeries,
  );
}
