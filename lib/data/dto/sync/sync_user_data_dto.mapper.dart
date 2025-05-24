// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sync_user_data_dto.dart';

class SyncUserDataDtoMapper extends ClassMapperBase<SyncUserDataDto> {
  SyncUserDataDtoMapper._();

  static SyncUserDataDtoMapper? _instance;
  static SyncUserDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SyncUserDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SyncUserDataDto';

  static String? _$id(SyncUserDataDto v) => v.id;
  static const Field<SyncUserDataDto, String> _f$id = Field(
    'id',
    _$id,
    opt: true,
  );
  static String? _$email(SyncUserDataDto v) => v.email;
  static const Field<SyncUserDataDto, String> _f$email = Field(
    'email',
    _$email,
    opt: true,
  );
  static DateTime? _$moviesSyncedAt(SyncUserDataDto v) => v.moviesSyncedAt;
  static const Field<SyncUserDataDto, DateTime> _f$moviesSyncedAt = Field(
    'moviesSyncedAt',
    _$moviesSyncedAt,
    key: r'movies_synced_at',
    opt: true,
  );
  static DateTime? _$seriesSyncedAt(SyncUserDataDto v) => v.seriesSyncedAt;
  static const Field<SyncUserDataDto, DateTime> _f$seriesSyncedAt = Field(
    'seriesSyncedAt',
    _$seriesSyncedAt,
    key: r'series_synced_at',
    opt: true,
  );

  @override
  final MappableFields<SyncUserDataDto> fields = const {
    #id: _f$id,
    #email: _f$email,
    #moviesSyncedAt: _f$moviesSyncedAt,
    #seriesSyncedAt: _f$seriesSyncedAt,
  };
  @override
  final bool ignoreNull = true;

  static SyncUserDataDto _instantiate(DecodingData data) {
    return SyncUserDataDto(
      id: data.dec(_f$id),
      email: data.dec(_f$email),
      moviesSyncedAt: data.dec(_f$moviesSyncedAt),
      seriesSyncedAt: data.dec(_f$seriesSyncedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SyncUserDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SyncUserDataDto>(map);
  }

  static SyncUserDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SyncUserDataDto>(json);
  }
}

mixin SyncUserDataDtoMappable {
  String toJsonString() {
    return SyncUserDataDtoMapper.ensureInitialized()
        .encodeJson<SyncUserDataDto>(this as SyncUserDataDto);
  }

  Map<String, dynamic> toJson() {
    return SyncUserDataDtoMapper.ensureInitialized().encodeMap<SyncUserDataDto>(
      this as SyncUserDataDto,
    );
  }

  SyncUserDataDtoCopyWith<SyncUserDataDto, SyncUserDataDto, SyncUserDataDto>
  get copyWith =>
      _SyncUserDataDtoCopyWithImpl<SyncUserDataDto, SyncUserDataDto>(
        this as SyncUserDataDto,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SyncUserDataDtoMapper.ensureInitialized().stringifyValue(
      this as SyncUserDataDto,
    );
  }

  @override
  bool operator ==(Object other) {
    return SyncUserDataDtoMapper.ensureInitialized().equalsValue(
      this as SyncUserDataDto,
      other,
    );
  }

  @override
  int get hashCode {
    return SyncUserDataDtoMapper.ensureInitialized().hashValue(
      this as SyncUserDataDto,
    );
  }
}

extension SyncUserDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SyncUserDataDto, $Out> {
  SyncUserDataDtoCopyWith<$R, SyncUserDataDto, $Out> get $asSyncUserDataDto =>
      $base.as((v, t, t2) => _SyncUserDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SyncUserDataDtoCopyWith<$R, $In extends SyncUserDataDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? email,
    DateTime? moviesSyncedAt,
    DateTime? seriesSyncedAt,
  });
  SyncUserDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SyncUserDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SyncUserDataDto, $Out>
    implements SyncUserDataDtoCopyWith<$R, SyncUserDataDto, $Out> {
  _SyncUserDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SyncUserDataDto> $mapper =
      SyncUserDataDtoMapper.ensureInitialized();
  @override
  $R call({
    Object? id = $none,
    Object? email = $none,
    Object? moviesSyncedAt = $none,
    Object? seriesSyncedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (email != $none) #email: email,
      if (moviesSyncedAt != $none) #moviesSyncedAt: moviesSyncedAt,
      if (seriesSyncedAt != $none) #seriesSyncedAt: seriesSyncedAt,
    }),
  );
  @override
  SyncUserDataDto $make(CopyWithData data) => SyncUserDataDto(
    id: data.get(#id, or: $value.id),
    email: data.get(#email, or: $value.email),
    moviesSyncedAt: data.get(#moviesSyncedAt, or: $value.moviesSyncedAt),
    seriesSyncedAt: data.get(#seriesSyncedAt, or: $value.seriesSyncedAt),
  );

  @override
  SyncUserDataDtoCopyWith<$R2, SyncUserDataDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SyncUserDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
