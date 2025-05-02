import '../../domain/entities/base_media/cast_data.dart';
import '../../domain/entities/base_media/crew_data.dart';
import '../dto/credits/cast_data_dto.dart';
import '../dto/credits/credits_data_dto.dart';
import '../dto/credits/crew_data_dto.dart';
import '../dto/credits/crew_job_dto.dart';
import 'app_crew_mapper_ext.dart';
import 'app_mapper.dart';

final class AppCreditsMapper extends AppMapper {
  List<CastData> mapCreditsDataDtoToCastDataList(CreditsDataDto dto) {
    return dto.cast?.map(_mapCastDataDtoToDomain).toList() ?? [];
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

  List<CrewData> mapCreditsDataDtoToCrewDataList(CreditsDataDto dto) {
    return dto.crew
            ?.where((e) => e.job != CrewJobDto.unknown)
            .map(_mapCrewDataDtoToDomain)
            .toList() ??
        [];
  }

  CrewData _mapCrewDataDtoToDomain(CrewDataDto dto) {
    return CrewData(
      id: dto.id ?? -1,
      originalName: dto.originalName ?? '',
      profilePath: dto.profilePath ?? '',
      name: dto.name ?? '',
      job: dto.job.toDomain(),
    );
  }
}
