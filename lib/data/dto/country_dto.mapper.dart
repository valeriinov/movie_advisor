// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'country_dto.dart';

class CountryDtoMapper extends EnumMapper<CountryDto> {
  CountryDtoMapper._();

  static CountryDtoMapper? _instance;
  static CountryDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CountryDtoMapper._());
    }
    return _instance!;
  }

  static CountryDto fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CountryDto decode(dynamic value) {
    switch (value) {
      case 'US':
        return CountryDto.unitedStates;
      case 'GB':
        return CountryDto.unitedKingdom;
      case 'CA':
        return CountryDto.canada;
      case 'DE':
        return CountryDto.germany;
      case 'FR':
        return CountryDto.france;
      case 'IT':
        return CountryDto.italy;
      case 'ES':
        return CountryDto.spain;
      case 'CN':
        return CountryDto.china;
      case 'JP':
        return CountryDto.japan;
      case 'KR':
        return CountryDto.southKorea;
      case 'IN':
        return CountryDto.india;
      case 'BR':
        return CountryDto.brazil;
      case 'AU':
        return CountryDto.australia;
      case 'RU':
        return CountryDto.russia;
      case 'UA':
        return CountryDto.ukraine;
      case 'LV':
        return CountryDto.latvia;
      case 'LT':
        return CountryDto.lithuania;
      case 'EE':
        return CountryDto.estonia;
      case 'PL':
        return CountryDto.poland;
      case 'CZ':
        return CountryDto.czechRepublic;
      case 'HU':
        return CountryDto.hungary;
      case 'GR':
        return CountryDto.greece;
      case 'TR':
        return CountryDto.turkey;
      case 'MX':
        return CountryDto.mexico;
      case '':
        return CountryDto.none;
      default:
        return CountryDto.values[24];
    }
  }

  @override
  dynamic encode(CountryDto self) {
    switch (self) {
      case CountryDto.unitedStates:
        return 'US';
      case CountryDto.unitedKingdom:
        return 'GB';
      case CountryDto.canada:
        return 'CA';
      case CountryDto.germany:
        return 'DE';
      case CountryDto.france:
        return 'FR';
      case CountryDto.italy:
        return 'IT';
      case CountryDto.spain:
        return 'ES';
      case CountryDto.china:
        return 'CN';
      case CountryDto.japan:
        return 'JP';
      case CountryDto.southKorea:
        return 'KR';
      case CountryDto.india:
        return 'IN';
      case CountryDto.brazil:
        return 'BR';
      case CountryDto.australia:
        return 'AU';
      case CountryDto.russia:
        return 'RU';
      case CountryDto.ukraine:
        return 'UA';
      case CountryDto.latvia:
        return 'LV';
      case CountryDto.lithuania:
        return 'LT';
      case CountryDto.estonia:
        return 'EE';
      case CountryDto.poland:
        return 'PL';
      case CountryDto.czechRepublic:
        return 'CZ';
      case CountryDto.hungary:
        return 'HU';
      case CountryDto.greece:
        return 'GR';
      case CountryDto.turkey:
        return 'TR';
      case CountryDto.mexico:
        return 'MX';
      case CountryDto.none:
        return '';
    }
  }
}

extension CountryDtoMapperExtension on CountryDto {
  dynamic toValue() {
    CountryDtoMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CountryDto>(this);
  }
}
