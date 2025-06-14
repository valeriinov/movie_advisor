import 'package:drift/drift.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../dto/country_dto.dart';
import '../../../dto/movie/movie_genre_dto.dart';
import '../../../dto/series/series_genre_dto.dart';
import '../../../dto/watched_filter/movies_watched_filter_data_dto.dart';
import '../../../dto/watched_filter/series_watched_filter_data_dto.dart';
import '../../../dto/watched_filter/watched_sort_by_dto.dart';
import '../../../dto/watchlist_filter/movies_watchlist_filter_data_dto.dart';
import '../../../dto/watchlist_filter/series_watchlist_filter_data_dto.dart';
import '../../../dto/watchlist_filter/watchlist_sort_by_dto.dart';
import '../../tables/movies_table.dart';
import '../../tables/series_table.dart';
import 'watch_filter_handler.dart';

class ImplWatchFilterHandler implements WatchFilterHandler {
  @override
  Expression<bool> moviesWatchedPredicate(
    MoviesTable table,
    MoviesWatchedFilterDataDto filter,
  ) {
    return _and([
      table.isWatched.equals(true),
      _flag(table.isInWatchlist, filter.includeWatchlist, false),
      _countries(table.originCountry, filter.withCountries),
      _genresInclude(table.genres, filter.withGenres),
      _genresExclude(table.genres, filter.withoutGenres),
      _dateRange(
        table.premiereDate,
        filter.fromPremiereDate,
        filter.toPremiereDate,
      ),
      _dateRange(
        table.lastWatchedAt,
        filter.fromWatchedDate,
        filter.toWatchedDate,
      ),
    ]);
  }

  @override
  Expression<bool> moviesWatchlistPredicate(
    MoviesTable table,
    MoviesWatchlistFilterDataDto filter,
  ) {
    return _and([
      table.isInWatchlist.equals(true),
      _flag(table.isWatched, filter.includeWatched, false),
      _countries(table.originCountry, filter.withCountries),
      _genresInclude(table.genres, filter.withGenres),
      _genresExclude(table.genres, filter.withoutGenres),
      _dateRange(table.watchlistAddedAt, filter.fromPremiereDate, filter.toPremiereDate),
    ]);
  }

  @override
  Expression<bool> seriesWatchedPredicate(
    SeriesTable table,
    SeriesWatchedFilterDataDto filter,
  ) {
    return _and([
      table.isWatched.equals(true),
      _flag(table.isInWatchlist, filter.includeWatchlist, false),
      _countries(table.originCountry, filter.withCountries),
      _genresInclude(table.genres, filter.withGenres),
      _genresExclude(table.genres, filter.withoutGenres),
      _dateRange(
        table.premiereDate,
        filter.fromPremiereDate,
        filter.toPremiereDate,
      ),
      _dateRange(
        table.lastWatchedAt,
        filter.fromWatchedDate,
        filter.toWatchedDate,
      ),
    ]);
  }

  @override
  Expression<bool> seriesWatchlistPredicate(
    SeriesTable table,
    SeriesWatchlistFilterDataDto filter,
  ) {
    return _and([
      table.isInWatchlist.equals(true),
      _flag(table.isWatched, filter.includeWatched, false),
      _countries(table.originCountry, filter.withCountries),
      _genresInclude(table.genres, filter.withGenres),
      _genresExclude(table.genres, filter.withoutGenres),
      _dateRange(table.watchlistAddedAt, filter.fromPremiereDate, filter.toPremiereDate),
    ]);
  }

  Expression<bool> _flag(BoolColumn col, bool? include, bool desired) {
    return include == true
        ? const Constant(true)
        : col.equals(desired) | col.isNull();
  }

  Expression<bool> _countries(TextColumn col, List<CountryDto>? countries) {
    return countries.isNotNullAndNotEmpty
        ? col.isIn(countries?.map((e) => e.toValue() as String).toList() ?? [])
        : const Constant(true);
  }

  Expression<bool> _genresInclude<T>(TextColumn col, List<T>? genres) {
    return genres.isNotNullAndNotEmpty
        ? _and(genres!.map((g) => col.like('%${_genreId(g)}%')))
        : const Constant(true);
  }

  Expression<bool> _genresExclude<T>(TextColumn col, List<T>? genres) {
    return genres.isNotNullAndNotEmpty
        ? _and(genres!.map((g) => col.like('%${_genreId(g)}%').not()))
        : const Constant(true);
  }

  int _genreId<T>(T genre) {
    return switch (genre) {
      MovieGenreDto g => g.toValue(),
      SeriesGenreDto g => g.toValue(),
      _ => -1,
    };
  }

  Expression<bool> _dateRange(
    DateTimeColumn? col,
    DateTime? from,
    DateTime? to,
  ) {
    if (col == null) return const Constant(true);

    return _and([
      if (from != null) col.isBiggerOrEqualValue(from),
      if (to != null) col.isSmallerOrEqualValue(to),
    ]);
  }

  Expression<bool> _and(Iterable<Expression<bool>> parts) {
    return parts.nonNulls.fold(const Constant(true), (a, b) => a & b);
  }

  @override
  OrderingTerm moviesWatchedOrder(MoviesTable table, WatchedSortByDto? sortBy) {
    return switch (sortBy) {
      WatchedSortByDto.watchedDateAsc => table.lastWatchedAt.asc(),
      WatchedSortByDto.watchedDateDesc => table.lastWatchedAt.desc(),
      WatchedSortByDto.premiereDateAsc => table.premiereDate.asc(),
      WatchedSortByDto.premiereDateDesc => table.premiereDate.desc(),
      WatchedSortByDto.tmdbRateAsc => table.tmdbRating.asc(),
      WatchedSortByDto.tmdbRateDesc => table.tmdbRating.desc(),
      WatchedSortByDto.userRateAsc => table.userRating.asc(),
      WatchedSortByDto.userRateDesc => table.userRating.desc(),
      null => table.lastWatchedAt.desc(),
    };
  }

  @override
  OrderingTerm moviesWatchlistOrder(
    MoviesTable table,
    WatchlistSortByDto? sortBy,
  ) {
    return switch (sortBy) {
      WatchlistSortByDto.addedDateAsc => table.watchlistAddedAt.asc(),
      WatchlistSortByDto.addedDateDesc => table.watchlistAddedAt.desc(),
      WatchlistSortByDto.premiereDateAsc => table.premiereDate.asc(),
      WatchlistSortByDto.premiereDateDesc => table.premiereDate.desc(),
      WatchlistSortByDto.tmdbRateAsc => table.tmdbRating.asc(),
      WatchlistSortByDto.tmdbRateDesc => table.tmdbRating.desc(),
      null => table.watchlistAddedAt.asc(),
    };
  }

  @override
  OrderingTerm seriesWatchedOrder(SeriesTable table, WatchedSortByDto? sortBy) {
    return switch (sortBy) {
      WatchedSortByDto.watchedDateAsc => table.lastWatchedAt.asc(),
      WatchedSortByDto.watchedDateDesc => table.lastWatchedAt.desc(),
      WatchedSortByDto.premiereDateAsc => table.premiereDate.asc(),
      WatchedSortByDto.premiereDateDesc => table.premiereDate.desc(),
      WatchedSortByDto.tmdbRateAsc => table.tmdbRating.asc(),
      WatchedSortByDto.tmdbRateDesc => table.tmdbRating.desc(),
      WatchedSortByDto.userRateAsc => table.userRating.asc(),
      WatchedSortByDto.userRateDesc => table.userRating.desc(),
      null => table.lastWatchedAt.desc(),
    };
  }

  @override
  OrderingTerm seriesWatchlistOrder(
    SeriesTable table,
    WatchlistSortByDto? sortBy,
  ) {
    return switch (sortBy) {
      WatchlistSortByDto.addedDateAsc => table.watchlistAddedAt.asc(),
      WatchlistSortByDto.addedDateDesc => table.watchlistAddedAt.desc(),
      WatchlistSortByDto.premiereDateAsc => table.premiereDate.asc(),
      WatchlistSortByDto.premiereDateDesc => table.premiereDate.desc(),
      WatchlistSortByDto.tmdbRateAsc => table.tmdbRating.asc(),
      WatchlistSortByDto.tmdbRateDesc => table.tmdbRating.desc(),
      null => table.watchlistAddedAt.asc(),
    };
  }
}

extension _OrderingTermX on Expression {
  OrderingTerm asc() => OrderingTerm(expression: this, mode: OrderingMode.asc);

  OrderingTerm desc() =>
      OrderingTerm(expression: this, mode: OrderingMode.desc);
}
