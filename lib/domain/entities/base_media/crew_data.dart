import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import 'crew_job.dart';

part 'crew_data.mapper.dart';

@mappableEntity
class CrewData with CrewDataMappable {
  final int id;
  final String originalName;
  final String profilePath;
  final String name;
  final CrewJob job;

  const CrewData({
    this.id = -1,
    this.originalName = '',
    this.profilePath = '',
    this.name = '',
    this.job = CrewJob.unknown,
  });
}
