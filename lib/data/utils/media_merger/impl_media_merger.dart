import '../../dto/movie/movie_data_dto.dart';
import '../../dto/movie/movie_short_data_dto.dart';
import '../../dto/person/person_mov_cred_data_dto.dart';
import '../../dto/person/person_ser_cred_data_dto.dart';
import '../../dto/series/series_data_dto.dart';
import '../../dto/series/series_short_data_dto.dart';
import 'media_merger.dart';

class ImplMediaMerger implements MediaMerger {
  @override
  List<MovieDataDto> mergeMoviesList(
    List<MovieDataDto> remoteMovies,
    List<MovieShortDataDto> localMovies,
  ) {
    final localMap = {for (final movie in localMovies) movie.id: movie};

    return remoteMovies.map((remoteMovie) {
      final localMovie = localMap[remoteMovie.id];

      return localMovie != null
          ? mergeMovie(remoteMovie, localMovie)
          : remoteMovie;
    }).toList();
  }

  @override
  List<SeriesDataDto> mergeSeriesList(
    List<SeriesDataDto> remoteSeries,
    List<SeriesShortDataDto> localSeries,
  ) {
    final localMap = {for (final series in localSeries) series.id: series};

    return remoteSeries.map((remoteSeries) {
      final localSeries = localMap[remoteSeries.id];

      return localSeries != null
          ? mergeSeries(remoteSeries, localSeries)
          : remoteSeries;
    }).toList();
  }

  @override
  MovieDataDto mergeMovie(
    MovieDataDto remoteMovie,
    MovieShortDataDto localMovie,
  ) {
    return remoteMovie.copyWith(
      userRating: localMovie.userRating,
      isWatched: localMovie.isWatched,
      isInWatchlist: localMovie.isInWatchlist,
    );
  }

  @override
  SeriesDataDto mergeSeries(
    SeriesDataDto remoteSeries,
    SeriesShortDataDto localSeries,
  ) {
    return remoteSeries.copyWith(
      userRating: localSeries.userRating,
      isWatched: localSeries.isWatched,
      isInWatchlist: localSeries.isInWatchlist,
    );
  }

  @override
  List<PersonMovCredDataDto> mergePersonMovieCredits(
    List<PersonMovCredDataDto> remoteCredits,
    List<MovieShortDataDto> localMovies,
  ) {
    final localMap = {for (final movie in localMovies) movie.id: movie};

    return remoteCredits.map((remoteCredit) {
      final localMovie = localMap[remoteCredit.id];

      return localMovie != null
          ? remoteCredit.copyWith(
            userRating: localMovie.userRating,
            isWatched: localMovie.isWatched,
            isInWatchlist: localMovie.isInWatchlist,
          )
          : remoteCredit;
    }).toList();
  }

  @override
  List<PersonSerCredDataDto> mergePersonSeriesCredits(
    List<PersonSerCredDataDto> remoteCredits,
    List<SeriesShortDataDto> localSeries,
  ) {
    final localMap = {for (final series in localSeries) series.id: series};

    return remoteCredits.map((remoteCredit) {
      final localSeries = localMap[remoteCredit.id];

      return localSeries != null
          ? remoteCredit.copyWith(
            userRating: localSeries.userRating,
            isWatched: localSeries.isWatched,
            isInWatchlist: localSeries.isInWatchlist,
          )
          : remoteCredit;
    }).toList();
  }
}
