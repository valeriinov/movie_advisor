import 'package:dart_mappable/dart_mappable.dart';

part 'country_dto.mapper.dart';

@MappableEnum(mode: ValuesMode.indexed, defaultValue: CountryDto.none)
enum CountryDto {
  @MappableValue('US')
  unitedStates,
  @MappableValue('GB')
  unitedKingdom,
  @MappableValue('CA')
  canada,
  @MappableValue('DE')
  germany,
  @MappableValue('FR')
  france,
  @MappableValue('IT')
  italy,
  @MappableValue('ES')
  spain,
  @MappableValue('CN')
  china,
  @MappableValue('JP')
  japan,
  @MappableValue('KR')
  southKorea,
  @MappableValue('IN')
  india,
  @MappableValue('BR')
  brazil,
  @MappableValue('AU')
  australia,
  @MappableValue('RU')
  russia,
  @MappableValue('UA')
  ukraine,
  @MappableValue('')
  none,
}
