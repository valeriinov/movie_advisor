// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'crew_data.dart';

class CrewDataMapper extends ClassMapperBase<CrewData> {
  CrewDataMapper._();

  static CrewDataMapper? _instance;
  static CrewDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CrewDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CrewData';

  static int _$id(CrewData v) => v.id;
  static const Field<CrewData, int> _f$id =
      Field('id', _$id, opt: true, def: -1);
  static String _$originalName(CrewData v) => v.originalName;
  static const Field<CrewData, String> _f$originalName =
      Field('originalName', _$originalName, opt: true, def: '');
  static String _$profilePath(CrewData v) => v.profilePath;
  static const Field<CrewData, String> _f$profilePath =
      Field('profilePath', _$profilePath, opt: true, def: '');
  static String _$name(CrewData v) => v.name;
  static const Field<CrewData, String> _f$name =
      Field('name', _$name, opt: true, def: '');
  static CrewJob _$job(CrewData v) => v.job;
  static const Field<CrewData, CrewJob> _f$job =
      Field('job', _$job, opt: true, def: CrewJob.unknown);

  @override
  final MappableFields<CrewData> fields = const {
    #id: _f$id,
    #originalName: _f$originalName,
    #profilePath: _f$profilePath,
    #name: _f$name,
    #job: _f$job,
  };

  static CrewData _instantiate(DecodingData data) {
    return CrewData(
        id: data.dec(_f$id),
        originalName: data.dec(_f$originalName),
        profilePath: data.dec(_f$profilePath),
        name: data.dec(_f$name),
        job: data.dec(_f$job));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin CrewDataMappable {
  CrewDataCopyWith<CrewData, CrewData, CrewData> get copyWith =>
      _CrewDataCopyWithImpl<CrewData, CrewData>(
          this as CrewData, $identity, $identity);
  @override
  String toString() {
    return CrewDataMapper.ensureInitialized().stringifyValue(this as CrewData);
  }

  @override
  bool operator ==(Object other) {
    return CrewDataMapper.ensureInitialized()
        .equalsValue(this as CrewData, other);
  }

  @override
  int get hashCode {
    return CrewDataMapper.ensureInitialized().hashValue(this as CrewData);
  }
}

extension CrewDataValueCopy<$R, $Out> on ObjectCopyWith<$R, CrewData, $Out> {
  CrewDataCopyWith<$R, CrewData, $Out> get $asCrewData =>
      $base.as((v, t, t2) => _CrewDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CrewDataCopyWith<$R, $In extends CrewData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? originalName,
      String? profilePath,
      String? name,
      CrewJob? job});
  CrewDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CrewDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CrewData, $Out>
    implements CrewDataCopyWith<$R, CrewData, $Out> {
  _CrewDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CrewData> $mapper =
      CrewDataMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? originalName,
          String? profilePath,
          String? name,
          CrewJob? job}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (originalName != null) #originalName: originalName,
        if (profilePath != null) #profilePath: profilePath,
        if (name != null) #name: name,
        if (job != null) #job: job
      }));
  @override
  CrewData $make(CopyWithData data) => CrewData(
      id: data.get(#id, or: $value.id),
      originalName: data.get(#originalName, or: $value.originalName),
      profilePath: data.get(#profilePath, or: $value.profilePath),
      name: data.get(#name, or: $value.name),
      job: data.get(#job, or: $value.job));

  @override
  CrewDataCopyWith<$R2, CrewData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CrewDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
