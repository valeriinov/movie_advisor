import '../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../domain/entities/watched_filter/series_watched_filter_data.dart';
import '../../domain/entities/watched_filter/watched_sort_by.dart';
import '../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../domain/entities/watchlist_filter/series_watchlist_filter_data.dart';
import '../../domain/entities/watchlist_filter/watchlist_sort_by.dart';
import '../dto/watched_filter/movies_watched_filter_data_dto.dart';
import '../dto/watched_filter/series_watched_filter_data_dto.dart';
import '../dto/watched_filter/watched_sort_by_dto.dart';
import '../dto/watchlist_filter/movies_watchlist_filter_data_dto.dart';
import '../dto/watchlist_filter/series_watchlist_filter_data_dto.dart';
import '../dto/watchlist_filter/watchlist_sort_by_dto.dart';
import 'app_countries_mapper_ext.dart';
import 'app_genres_mapper_ext.dart';
import 'app_mapper.dart';

final class AppWatchFiltersMapper extends AppMapper {
  MoviesWatchlistFilterData? mapMoviesWatchlistFilterDataDtoToDomain(
    MoviesWatchlistFilterDataDto? dto,
  ) {
    if (dto == null) return null;

    return MoviesWatchlistFilterData(
      sortBy: _mapWatchlistSortByDtoToDomain(dto.sortBy),
      withCountries: dto.withCountries.toDomain(),
      withGenres: dto.withGenres.toDomain(),
      withoutGenres: dto.withoutGenres.toDomain(),
      includeWatched: dto.includeWatched ?? true,
      fromDate: dto.fromDate,
      toDate: dto.toDate,
    );
  }

  MoviesWatchlistFilterDataDto mapMoviesWatchlistFilterDataToDto(
    MoviesWatchlistFilterData data,
  ) {
    return MoviesWatchlistFilterDataDto(
      sortBy: _mapWatchlistSortByToDto(data.sortBy),
      withCountries: data.withCountries.toDto(),
      withGenres: data.withGenres.toDto(),
      withoutGenres: data.withoutGenres.toDto(),
      includeWatched: data.includeWatched,
      fromDate: data.fromDate,
      toDate: data.toDate,
    );
  }

  SeriesWatchlistFilterData? mapSeriesWatchlistFilterDataDtoToDomain(
    SeriesWatchlistFilterDataDto? dto,
  ) {
    if (dto == null) return null;

    return SeriesWatchlistFilterData(
      sortBy: _mapWatchlistSortByDtoToDomain(dto.sortBy),
      withCountries: dto.withCountries.toDomain(),
      withGenres: dto.withGenres.toDomain(),
      withoutGenres: dto.withoutGenres.toDomain(),
      includeWatched: dto.includeWatched ?? true,
      fromDate: dto.fromDate,
      toDate: dto.toDate,
    );
  }

  SeriesWatchlistFilterDataDto mapSeriesWatchlistFilterDataToDto(
    SeriesWatchlistFilterData data,
  ) {
    return SeriesWatchlistFilterDataDto(
      sortBy: _mapWatchlistSortByToDto(data.sortBy),
      withCountries: data.withCountries.toDto(),
      withGenres: data.withGenres.toDto(),
      withoutGenres: data.withoutGenres.toDto(),
      includeWatched: data.includeWatched,
      fromDate: data.fromDate,
      toDate: data.toDate,
    );
  }

  MoviesWatchedFilterData? mapMoviesWatchedFilterDataDtoToDomain(
    MoviesWatchedFilterDataDto? dto,
  ) {
    if (dto == null) return null;

    return MoviesWatchedFilterData(
      sortBy: _mapWatchedSortByDtoToDomain(dto.sortBy),
      withCountries: dto.withCountries.toDomain(),
      withGenres: dto.withGenres.toDomain(),
      withoutGenres: dto.withoutGenres.toDomain(),
      includeWatchlist: dto.includeWatchlist ?? true,
      fromPremiereDate: dto.fromPremiereDate,
      toPremiereDate: dto.toPremiereDate,
      fromWatchedDate: dto.fromWatchedDate,
      toWatchedDate: dto.toWatchedDate,
    );
  }

  MoviesWatchedFilterDataDto mapMoviesWatchedFilterDataToDto(
    MoviesWatchedFilterData data,
  ) {
    return MoviesWatchedFilterDataDto(
      sortBy: _mapWatchedSortByToDto(data.sortBy),
      withCountries: data.withCountries.toDto(),
      withGenres: data.withGenres.toDto(),
      withoutGenres: data.withoutGenres.toDto(),
      includeWatchlist: data.includeWatchlist,
      fromPremiereDate: data.fromPremiereDate,
      toPremiereDate: data.toPremiereDate,
      fromWatchedDate: data.fromWatchedDate,
      toWatchedDate: data.toWatchedDate,
    );
  }

  SeriesWatchedFilterData? mapSeriesWatchedFilterDataDtoToDomain(
    SeriesWatchedFilterDataDto? dto,
  ) {
    if (dto == null) return null;

    return SeriesWatchedFilterData(
      sortBy: _mapWatchedSortByDtoToDomain(dto.sortBy),
      withCountries: dto.withCountries.toDomain(),
      withGenres: dto.withGenres.toDomain(),
      withoutGenres: dto.withoutGenres.toDomain(),
      includeWatchlist: dto.includeWatchlist ?? true,
      fromPremiereDate: dto.fromPremiereDate,
      toPremiereDate: dto.toPremiereDate,
      fromWatchedDate: dto.fromWatchedDate,
      toWatchedDate: dto.toWatchedDate,
    );
  }

  SeriesWatchedFilterDataDto mapSeriesWatchedFilterDataToDto(
    SeriesWatchedFilterData data,
  ) {
    return SeriesWatchedFilterDataDto(
      sortBy: _mapWatchedSortByToDto(data.sortBy),
      withCountries: data.withCountries.toDto(),
      withGenres: data.withGenres.toDto(),
      withoutGenres: data.withoutGenres.toDto(),
      includeWatchlist: data.includeWatchlist,
      fromPremiereDate: data.fromPremiereDate,
      toPremiereDate: data.toPremiereDate,
      fromWatchedDate: data.fromWatchedDate,
      toWatchedDate: data.toWatchedDate,
    );
  }

  WatchlistSortBy _mapWatchlistSortByDtoToDomain(WatchlistSortByDto? sortBy) {
    if (sortBy == null) return WatchlistSortBy.addedDateAsc;

    return WatchlistSortBy.values.firstWhere(
      (e) => e.name == sortBy.name,
      orElse: () => WatchlistSortBy.addedDateAsc,
    );
  }

  WatchlistSortByDto _mapWatchlistSortByToDto(WatchlistSortBy sortBy) {
    return WatchlistSortByDto.values.firstWhere(
      (e) => e.name == sortBy.name,
      orElse: () => WatchlistSortByDto.addedDateAsc,
    );
  }

  WatchedSortBy _mapWatchedSortByDtoToDomain(WatchedSortByDto? sortBy) {
    if (sortBy == null) return WatchedSortBy.watchedDateDesc;

    return WatchedSortBy.values.firstWhere(
      (e) => e.name == sortBy.name,
      orElse: () => WatchedSortBy.watchedDateDesc,
    );
  }

  WatchedSortByDto _mapWatchedSortByToDto(WatchedSortBy sortBy) {
    return WatchedSortByDto.values.firstWhere(
      (e) => e.name == sortBy.name,
      orElse: () => WatchedSortByDto.watchedDateDesc,
    );
  }
}
