import '../../domain/entities/base_media/country.dart';
import '../../domain/entities/filter/movies_filter_data.dart';
import '../../domain/entities/filter/series_filter_data.dart';
import '../../domain/entities/filter/sort_by.dart';
import '../dto/country_dto.dart';
import '../dto/filter/movies_filter_data_dto.dart';
import '../dto/filter/series_filter_data_dto.dart';
import '../dto/filter/sort_by_dto.dart';
import 'app_genres_mapper_ext.dart';
import 'app_mapper.dart';

final class AppFilterMapper extends AppMapper {
  MoviesFilterData? mapMoviesFilterDataDtoToDomain(MoviesFilterDataDto? dto) {
    if (dto == null) return null;

    return MoviesFilterData(
      sortBy: _mapSortByDtoToDomain(dto.sortBy),
      withCountries: _mapCountriesDtoToDomain(dto.withCountries),
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
      withCountries: _mapCountriesToDto(data.withCountries),
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
      withCountries: _mapCountriesDtoToDomain(dto.withCountries),
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
      withCountries: _mapCountriesToDto(data.withCountries),
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

  List<Country> _mapCountriesDtoToDomain(List<CountryDto>? countries) {
    return countries?.map(_mapCountryDtoToDomain).toList() ?? [];
  }

  Country _mapCountryDtoToDomain(CountryDto country) {
    return Country.values.firstWhere(
      (e) => e.name == country.name,
      orElse: () => Country.none,
    );
  }

  List<CountryDto> _mapCountriesToDto(List<Country> counties) {
    return counties.map(_mapCountryToDto).toList();
  }

  CountryDto _mapCountryToDto(Country country) {
    return CountryDto.values.firstWhere(
      (e) => e.name == country.name,
      orElse: () => CountryDto.none,
    );
  }
}
