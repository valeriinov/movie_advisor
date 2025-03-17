import '../../domain/entities/filter/country.dart';
import '../../domain/entities/filter/movies_filter_data.dart';
import '../../domain/entities/filter/series_filter_data.dart';
import '../../domain/entities/filter/sort_by.dart';
import '../dto/filter/country_dto.dart';
import '../dto/filter/movies_filter_data_dto.dart';
import '../dto/filter/series_filter_data_dto.dart';
import '../dto/filter/sort_by_dto.dart';
import 'app_genres_mapper_ext.dart';
import 'app_mapper.dart';

final class AppFilterMapper extends AppMapper {
  MoviesFilterData? mapMoviesFilterDataDtoToDomain(MoviesFilterDataDto? dto) {
    if (dto == null) return null;

    return MoviesFilterData(
      year: dto.year,
      sortBy: _mapSortByDtoToDomain(dto.sortBy),
      withCountries: _mapCountriesDtoToDomain(dto.withCountries),
      withoutCountries: _mapCountriesDtoToDomain(dto.withoutCountries),
      withGenres: dto.withGenres.toDomain(),
      withoutGenres: dto.withoutGenres.toDomain(),
    );
  }

  MoviesFilterDataDto mapMoviesFilterDataToDto(MoviesFilterData data) {
    return MoviesFilterDataDto(
      year: data.year,
      sortBy: _mapSortByToDto(data.sortBy),
      withCountries: _mapCountriesToDto(data.withCountries),
      withoutCountries: _mapCountriesToDto(data.withoutCountries),
      withGenres: data.withGenres.toDto(),
      withoutGenres: data.withoutGenres.toDto(),
    );
  }

  SeriesFilterData? mapSeriesFilterDataDtoToDomain(SeriesFilterDataDto? dto) {
    if (dto == null) return null;

    return SeriesFilterData(
      year: dto.year,
      sortBy: _mapSortByDtoToDomain(dto.sortBy),
      withCountries: _mapCountriesDtoToDomain(dto.withCountries),
      withoutCountries: _mapCountriesDtoToDomain(dto.withoutCountries),
      withGenres: dto.withGenres.toDomain(),
      withoutGenres: dto.withoutGenres.toDomain(),
    );
  }

  SeriesFilterDataDto mapSeriesFilterDataToDto(SeriesFilterData data) {
    return SeriesFilterDataDto(
      year: data.year,
      sortBy: _mapSortByToDto(data.sortBy),
      withCountries: _mapCountriesToDto(data.withCountries),
      withoutCountries: _mapCountriesToDto(data.withoutCountries),
      withGenres: data.withGenres.toDto(),
      withoutGenres: data.withoutGenres.toDto(),
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
