import '../../domain/entities/base_media/country.dart';
import '../dto/country_dto.dart';

extension AppCountriesDtoMapper on List<Country> {
  List<CountryDto> toDto() {
    return map((e) => e.toDto()).toList();
  }
}

extension AppCountryDtoMapper on Country {
  CountryDto toDto() {
    return CountryDto.values.firstWhere(
      (e) => e.name == name,
      orElse: () => CountryDto.none,
    );
  }
}

extension AppCountriesMapper on List<CountryDto>? {
  List<Country> toDomain() {
    return this?.map((e) => e.toDomain()).toList() ?? [];
  }
}

extension AppCountryMapper on CountryDto {
  Country toDomain() {
    return Country.values.firstWhere(
      (e) => e.name == name,
      orElse: () => Country.none,
    );
  }
}
