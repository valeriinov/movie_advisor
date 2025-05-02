import 'package:dart_mappable/dart_mappable.dart';

part 'gender_dto.mapper.dart';

@MappableEnum(mode: ValuesMode.indexed, defaultValue: GenderDto.none)
enum GenderDto {
  @MappableValue(1)
  female,
  @MappableValue(2)
  male,
  @MappableValue(-1)
  none,
}
