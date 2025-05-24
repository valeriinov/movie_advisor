// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'crew_data_dto.dart';

class CrewDataDtoMapper extends ClassMapperBase<CrewDataDto> {
  CrewDataDtoMapper._();

  static CrewDataDtoMapper? _instance;
  static CrewDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CrewDataDtoMapper._());
      CrewJobDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CrewDataDto';

  static int? _$id(CrewDataDto v) => v.id;
  static const Field<CrewDataDto, int> _f$id = Field('id', _$id, opt: true);
  static String? _$originalName(CrewDataDto v) => v.originalName;
  static const Field<CrewDataDto, String> _f$originalName = Field(
    'originalName',
    _$originalName,
    key: r'original_name',
    opt: true,
  );
  static String? _$profilePath(CrewDataDto v) => v.profilePath;
  static const Field<CrewDataDto, String> _f$profilePath = Field(
    'profilePath',
    _$profilePath,
    key: r'profile_path',
    opt: true,
  );
  static String? _$name(CrewDataDto v) => v.name;
  static const Field<CrewDataDto, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
  );
  static CrewJobDto? _$job(CrewDataDto v) => v.job;
  static const Field<CrewDataDto, CrewJobDto> _f$job = Field(
    'job',
    _$job,
    opt: true,
  );

  @override
  final MappableFields<CrewDataDto> fields = const {
    #id: _f$id,
    #originalName: _f$originalName,
    #profilePath: _f$profilePath,
    #name: _f$name,
    #job: _f$job,
  };
  @override
  final bool ignoreNull = true;

  static CrewDataDto _instantiate(DecodingData data) {
    return CrewDataDto(
      id: data.dec(_f$id),
      originalName: data.dec(_f$originalName),
      profilePath: data.dec(_f$profilePath),
      name: data.dec(_f$name),
      job: data.dec(_f$job),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CrewDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CrewDataDto>(map);
  }

  static CrewDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<CrewDataDto>(json);
  }
}

mixin CrewDataDtoMappable {
  String toJsonString() {
    return CrewDataDtoMapper.ensureInitialized().encodeJson<CrewDataDto>(
      this as CrewDataDto,
    );
  }

  Map<String, dynamic> toJson() {
    return CrewDataDtoMapper.ensureInitialized().encodeMap<CrewDataDto>(
      this as CrewDataDto,
    );
  }

  CrewDataDtoCopyWith<CrewDataDto, CrewDataDto, CrewDataDto> get copyWith =>
      _CrewDataDtoCopyWithImpl<CrewDataDto, CrewDataDto>(
        this as CrewDataDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CrewDataDtoMapper.ensureInitialized().stringifyValue(
      this as CrewDataDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return CrewDataDtoMapper.ensureInitialized().equalsValue(
      this as CrewDataDto,
      other,
    );
  }

  @override
  int get hashCode {
    return CrewDataDtoMapper.ensureInitialized().hashValue(this as CrewDataDto);
  }
}

extension CrewDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CrewDataDto, $Out> {
  CrewDataDtoCopyWith<$R, CrewDataDto, $Out> get $asCrewDataDto =>
      $base.as((v, t, t2) => _CrewDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CrewDataDtoCopyWith<$R, $In extends CrewDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? originalName,
    String? profilePath,
    String? name,
    CrewJobDto? job,
  });
  CrewDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CrewDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CrewDataDto, $Out>
    implements CrewDataDtoCopyWith<$R, CrewDataDto, $Out> {
  _CrewDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CrewDataDto> $mapper =
      CrewDataDtoMapper.ensureInitialized();
  @override
  $R call({
    Object? id = $none,
    Object? originalName = $none,
    Object? profilePath = $none,
    Object? name = $none,
    Object? job = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (originalName != $none) #originalName: originalName,
      if (profilePath != $none) #profilePath: profilePath,
      if (name != $none) #name: name,
      if (job != $none) #job: job,
    }),
  );
  @override
  CrewDataDto $make(CopyWithData data) => CrewDataDto(
    id: data.get(#id, or: $value.id),
    originalName: data.get(#originalName, or: $value.originalName),
    profilePath: data.get(#profilePath, or: $value.profilePath),
    name: data.get(#name, or: $value.name),
    job: data.get(#job, or: $value.job),
  );

  @override
  CrewDataDtoCopyWith<$R2, CrewDataDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CrewDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
