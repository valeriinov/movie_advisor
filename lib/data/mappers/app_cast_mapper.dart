import '../../domain/entities/base_media/cast_data.dart';
import '../dto/cast/cast_data_dto.dart';
import '../dto/cast/credits_data_dto.dart';
import 'app_mapper.dart';

final class AppCastMapper extends AppMapper {
  List<CastData> mapCreditsDataDtoToDomain(CreditsDataDto dto) {
    return _mapCastDataDtoListToDomain(dto.cast ?? []);
  }

  List<CastData> _mapCastDataDtoListToDomain(List<CastDataDto> dtos) {
    return dtos.map(_mapCastDataDtoToDomain).toList();
  }

  CastData _mapCastDataDtoToDomain(CastDataDto dto) {
    return CastData(
      id: dto.id ?? -1,
      originalName: dto.originalName ?? '',
      profilePath: dto.profilePath ?? '',
      name: dto.name ?? '',
      character: dto.character ?? '',
    );
  }

  CreditsDataDto mapCastDataListToCreditsDataDto(List<CastData> data) {
    return CreditsDataDto(
      cast: _mapCastDataListToDto(data),
    );
  }

  List<CastDataDto> _mapCastDataListToDto(List<CastData> data) {
    return data.map(_mapCastDataToDto).toList();
  }

  CastDataDto _mapCastDataToDto(CastData data) {
    return CastDataDto(
      id: data.id,
      originalName: data.originalName,
      profilePath: data.profilePath,
      name: data.name,
      character: data.character,
    );
  }
}
