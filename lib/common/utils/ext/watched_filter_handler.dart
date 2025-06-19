import '../../../domain/entities/base_media/media_short_data.dart';
import '../../../domain/entities/movie/movie_short_data.dart';
import '../../../domain/entities/series/series_short_data.dart';
import '../../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../../domain/entities/watched_filter/series_watched_filter_data.dart';

extension MoviesWatchedFilterHandler on MoviesWatchedFilterData {
  bool matches(MediaShortData media) {
    final movie = _asMovie(media);

    return movie != null &&
        movie.isWatched &&
        _countryAllowed(movie) &&
        _watchlistAllowed(movie) &&
        _premiereDateAllowed(movie) &&
        _watchedDateAllowed(movie) &&
        _withGenresAllowed(movie) &&
        _withoutGenresAllowed(movie);
  }

  MovieShortData? _asMovie(MediaShortData media) {
    return media is MovieShortData ? media : null;
  }

  bool _countryAllowed(MovieShortData media) {
    return withCountries.isEmpty ||
        media.originCountry.any((c) => withCountries.contains(c));
  }

  bool _watchlistAllowed(MovieShortData media) {
    return includeWatchlist || !media.isInWatchlist;
  }

  bool _premiereDateAllowed(MovieShortData media) {
    return _notBefore(media.premiereDate, fromPremiereDate) &&
        _notAfter(media.premiereDate, toPremiereDate);
  }

  bool _watchedDateAllowed(MovieShortData media) {
    return _notBefore(media.lastWatchedAt, fromWatchedDate) &&
        _notAfter(media.lastWatchedAt, toWatchedDate);
  }

  bool _withGenresAllowed(MovieShortData media) {
    return withGenres.isEmpty ||
        media.genres.any((g) => withGenres.contains(g));
  }

  bool _withoutGenresAllowed(MovieShortData media) {
    return withoutGenres.isEmpty ||
        !media.genres.any((g) => withoutGenres.contains(g));
  }
}

extension SeriesWatchedFilterHandler on SeriesWatchedFilterData {
  bool matches(MediaShortData media) {
    final series = _asSeries(media);

    return series != null &&
        series.isWatched &&
        _countryAllowed(series) &&
        _watchlistAllowed(series) &&
        _premiereDateAllowed(series) &&
        _watchedDateAllowed(series) &&
        _withGenresAllowed(series) &&
        _withoutGenresAllowed(series);
  }

  SeriesShortData? _asSeries(MediaShortData media) {
    return media is SeriesShortData ? media : null;
  }

  bool _countryAllowed(SeriesShortData media) {
    return withCountries.isEmpty ||
        media.originCountry.any((c) => withCountries.contains(c));
  }

  bool _watchlistAllowed(SeriesShortData media) {
    return includeWatchlist || !media.isInWatchlist;
  }

  bool _premiereDateAllowed(SeriesShortData media) {
    return _notBefore(media.premiereDate, fromPremiereDate) &&
        _notAfter(media.premiereDate, toPremiereDate);
  }

  bool _watchedDateAllowed(SeriesShortData media) {
    return _notBefore(media.lastWatchedAt, fromWatchedDate) &&
        _notAfter(media.lastWatchedAt, toWatchedDate);
  }

  bool _withGenresAllowed(SeriesShortData media) {
    return withGenres.isEmpty ||
        media.genres.any((g) => withGenres.contains(g));
  }

  bool _withoutGenresAllowed(SeriesShortData media) {
    return withoutGenres.isEmpty ||
        !media.genres.any((g) => withoutGenres.contains(g));
  }
}

bool _notBefore(DateTime? value, DateTime? min) {
  return min == null || value == null || !value.isBefore(min);
}

bool _notAfter(DateTime? value, DateTime? max) {
  return max == null || value == null || !value.isAfter(max);
}
