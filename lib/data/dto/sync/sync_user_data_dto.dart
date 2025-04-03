import 'package:dart_mappable/dart_mappable.dart';

part 'sync_user_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SyncUserDataDto with SyncUserDataDtoMappable {
  final String? id;
  final String? email;
  final DateTime? moviesSyncedAt;
  final DateTime? seriesSyncedAt;

  const SyncUserDataDto({
    this.id,
    this.email,
    this.moviesSyncedAt,
    this.seriesSyncedAt,
  });

  factory SyncUserDataDto.fromJson(Map<String, dynamic> json) =>
      SyncUserDataDtoMapper.fromJson(json);
}
