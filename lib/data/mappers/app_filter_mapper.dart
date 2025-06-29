import '../../domain/entities/filter/movies_filter_data.dart';
import '../../domain/entities/filter/series_filter_data.dart';
import '../../domain/entities/filter/sort_by.dart';
import '../dto/filter/movies_filter_data_dto.dart';
import '../dto/filter/series_filter_data_dto.dart';
import '../dto/filter/sort_by_dto.dart';
import 'app_countries_mapper_ext.dart';
import 'app_genres_mapper_ext.dart';
import 'app_mapper.dart';

final class AppFilterMapper extends AppMapper {
  MoviesFilterData? mapMoviesFilterDataDtoToDomain(MoviesFilterDataDto? dto) {
    if (dto == null) return null;

    return MoviesFilterData(
      sortBy: _mapSortByDtoToDomain(dto.sortBy),
      withCountries: dto.withCountries.toDomain(),
      withGenres: dto.withGenres.toDomain(),
      withoutGenres: dto.withoutGenres.toDomain(),
      includeWatchlist: dto.includeWatchlist ?? true,
      includeWatched: dto.includeWatched ?? true,
      fromDate: dto.fromDate,
      toDate: dto.toDate,
    );
  }

  MoviesFilterDataDto mapMoviesFilterDataToDto(MoviesFilterData data) {
    return MoviesFilterDataDto(
      sortBy: _mapSortByToDto(data.sortBy),
      withCountries: data.withCountries.toDto(),
      withGenres: data.withGenres.toDto(),
      withoutGenres: data.withoutGenres.toDto(),
      includeWatchlist: data.includeWatchlist,
      includeWatched: data.includeWatched,
      fromDate: data.fromDate,
      toDate: data.toDate,
    );
  }

  SeriesFilterData? mapSeriesFilterDataDtoToDomain(SeriesFilterDataDto? dto) {
    if (dto == null) return null;

    return SeriesFilterData(
      sortBy: _mapSortByDtoToDomain(dto.sortBy),
      withCountries: dto.withCountries.toDomain(),
      withGenres: dto.withGenres.toDomain(),
      withoutGenres: dto.withoutGenres.toDomain(),
      includeWatchlist: dto.includeWatchlist ?? true,
      includeWatched: dto.includeWatched ?? true,
      fromDate: dto.fromDate,
      toDate: dto.toDate,
    );
  }

  SeriesFilterDataDto mapSeriesFilterDataToDto(SeriesFilterData data) {
    return SeriesFilterDataDto(
      sortBy: _mapSortByToDto(data.sortBy),
      withCountries: data.withCountries.toDto(),
      withGenres: data.withGenres.toDto(),
      withoutGenres: data.withoutGenres.toDto(),
      includeWatchlist: data.includeWatchlist,
      includeWatched: data.includeWatched,
      fromDate: data.fromDate,
      toDate: data.toDate,
    );
  }

  SortBy _mapSortByDtoToDomain(SortByDto? sortBy) {
    if (sortBy == null) return SortBy.popularityDesc;

    return SortBy.values.firstWhere(
      (e) => e.name == sortBy.name,
      orElse: () => SortBy.popularityDesc,
    );
  }

  SortByDto _mapSortByToDto(SortBy sortBy) {
    return SortByDto.values.firstWhere(
      (e) => e.name == sortBy.name,
      orElse: () => SortByDto.popularityDesc,
    );
  }
}
