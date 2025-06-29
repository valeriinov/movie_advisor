import '../../../domain/entities/base_media/media_short_data.dart';
import '../../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../../domain/entities/watched_filter/series_watched_filter_data.dart';
import '../../../domain/entities/watched_filter/watched_sort_by.dart';
import '../../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../../domain/entities/watchlist_filter/series_watchlist_filter_data.dart';
import '../../../domain/entities/watchlist_filter/watchlist_sort_by.dart';
import 'watched_filter_handler.dart';
import 'watchlist_filter_handler.dart';

extension MediaShortListManager<T extends MediaShortData> on List<T> {
  List<T> handleWatchItem<F>(T item, F filter) {
    final shouldHave = _matches(filter, item);

    return switch (filter) {
      MoviesWatchedFilterData f => _sorted(
        _updateList(item, shouldHave),
        f.sortBy,
      ),
      SeriesWatchedFilterData f => _sorted(
        _updateList(item, shouldHave),
        f.sortBy,
      ),
      MoviesWatchlistFilterData f => _sorted(
        _updateList(item, shouldHave),
        f.sortBy,
      ),
      SeriesWatchlistFilterData f => _sorted(
        _updateList(item, shouldHave),
        f.sortBy,
      ),
      _ => this,
    };
  }

  bool _matches<F>(F filter, MediaShortData item) {
    return switch (filter) {
      MoviesWatchedFilterData f => f.matches(item),
      SeriesWatchedFilterData f => f.matches(item),
      MoviesWatchlistFilterData f => f.matches(item),
      SeriesWatchlistFilterData f => f.matches(item),
      _ => false,
    };
  }

  List<T> _updateList(T item, bool shouldHave) {
    return shouldHave ? _addOrUpdate(item) : deleteItemFromList(item);
  }

  List<T> _addOrUpdate(T item) {
    return _containsItemWithId(item.id)
        ? updateItemInList(item)
        : [...this, item];
  }

  List<T> _sorted<S>(List<T> list, S sortBy) {
    return switch (sortBy) {
      WatchedSortBy s => _sortWatched(list, s),
      WatchlistSortBy s => _sortWatchlist(list, s),
      _ => list,
    };
  }

  List<T> _sortWatched(List<T> list, WatchedSortBy s) {
    list.sort((a, b) => s.compare(a, b));

    return list;
  }

  List<T> _sortWatchlist(List<T> list, WatchlistSortBy s) {
    list.sort((a, b) => s.compare(a, b));

    return list;
  }

  bool _containsItemWithId(int id) {
    return any((e) => e.id == id);
  }

  List<T> updateItemInList(T item) {
    return map((e) => e.id == item.id ? item : e).toList();
  }

  List<T> deleteItemFromList(T item) {
    return where((e) => e.id != item.id).toList();
  }
}

extension _WatchedSort on WatchedSortBy {
  int compare(MediaShortData a, MediaShortData b) {
    return switch (this) {
      WatchedSortBy.watchedDateAsc => _ascDate(
        a.lastWatchedAt,
        b.lastWatchedAt,
      ),
      WatchedSortBy.watchedDateDesc => _descDate(
        a.lastWatchedAt,
        b.lastWatchedAt,
      ),
      WatchedSortBy.premiereDateAsc => _ascDate(a.premiereDate, b.premiereDate),
      WatchedSortBy.premiereDateDesc => _descDate(
        a.premiereDate,
        b.premiereDate,
      ),
      WatchedSortBy.tmdbRateAsc => _ascDouble(
        a.tmdbRating.voteAverage,
        b.tmdbRating.voteAverage,
      ),
      WatchedSortBy.tmdbRateDesc => _descDouble(
        a.tmdbRating.voteAverage,
        b.tmdbRating.voteAverage,
      ),
      WatchedSortBy.userRateAsc => _ascInt(a.userRating, b.userRating),
      WatchedSortBy.userRateDesc => _descInt(a.userRating, b.userRating),
    };
  }
}

extension _WatchlistSort on WatchlistSortBy {
  int compare(MediaShortData a, MediaShortData b) {
    return switch (this) {
      WatchlistSortBy.addedDateAsc => _ascDate(
        a.watchlistAddedAt,
        b.watchlistAddedAt,
      ),
      WatchlistSortBy.addedDateDesc => _descDate(
        a.watchlistAddedAt,
        b.watchlistAddedAt,
      ),
      WatchlistSortBy.premiereDateAsc => _ascDate(
        a.premiereDate,
        b.premiereDate,
      ),
      WatchlistSortBy.premiereDateDesc => _descDate(
        a.premiereDate,
        b.premiereDate,
      ),
      WatchlistSortBy.tmdbRateAsc => _ascDouble(
        a.tmdbRating.voteAverage,
        b.tmdbRating.voteAverage,
      ),
      WatchlistSortBy.tmdbRateDesc => _descDouble(
        a.tmdbRating.voteAverage,
        b.tmdbRating.voteAverage,
      ),
    };
  }
}

int _ascDate(DateTime? a, DateTime? b) =>
    (a ?? DateTime(9999)).compareTo(b ?? DateTime(9999));

int _descDate(DateTime? a, DateTime? b) =>
    (b ?? DateTime(0)).compareTo(a ?? DateTime(0));

int _ascDouble(double a, double b) => a.compareTo(b);

int _descDouble(double a, double b) => b.compareTo(a);

int _ascInt(int a, int b) => a.compareTo(b);

int _descInt(int a, int b) => b.compareTo(a);
