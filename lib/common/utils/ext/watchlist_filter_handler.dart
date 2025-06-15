import '../../../domain/entities/base_media/media_short_data.dart';
import '../../../domain/entities/movie/movie_short_data.dart';
import '../../../domain/entities/series/series_short_data.dart';
import '../../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../../domain/entities/watchlist_filter/series_watchlist_filter_data.dart';

extension MoviesWatchlistFilterHandler on MoviesWatchlistFilterData {
  bool matches(MediaShortData media) {
    final movie = _asMovie(media);

    return movie != null &&
        _countryAllowed(movie) &&
        _watchedAllowed(movie) &&
        _premiereDateAllowed(movie) &&
        _addedDateAllowed(movie) &&
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

  bool _watchedAllowed(MovieShortData media) {
    return includeWatched || !media.isWatched;
  }

  bool _premiereDateAllowed(MovieShortData media) {
    return _notBefore(media.premiereDate, fromPremiereDate) &&
        _notAfter(media.premiereDate, toPremiereDate);
  }

  bool _addedDateAllowed(MovieShortData media) {
    return _notBefore(media.watchlistAddedAt, fromAddedDate) &&
        _notAfter(media.watchlistAddedAt, toAddedDate);
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

extension SeriesWatchlistFilterHandler on SeriesWatchlistFilterData {
  bool matches(MediaShortData media) {
    final series = _asSeries(media);

    return series != null &&
        _countryAllowed(series) &&
        _watchedAllowed(series) &&
        _premiereDateAllowed(series) &&
        _addedDateAllowed(series) &&
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

  bool _watchedAllowed(SeriesShortData media) {
    return includeWatched || !media.isWatched;
  }

  bool _premiereDateAllowed(SeriesShortData media) {
    return _notBefore(media.premiereDate, fromPremiereDate) &&
        _notAfter(media.premiereDate, toPremiereDate);
  }

  bool _addedDateAllowed(SeriesShortData media) {
    return _notBefore(media.watchlistAddedAt, fromAddedDate) &&
        _notAfter(media.watchlistAddedAt, toAddedDate);
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
