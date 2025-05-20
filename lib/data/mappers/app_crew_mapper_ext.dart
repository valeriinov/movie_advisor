import '../../domain/entities/base_media/crew_job.dart';
import '../dto/credits/crew_job_dto.dart';

extension AppCrewJobMapper on CrewJobDto? {
  CrewJob toDomain() {
    return CrewJob.values.firstWhere(
      (e) => e.name == this?.name,
      orElse: () => CrewJob.unknown,
    );
  }
}
