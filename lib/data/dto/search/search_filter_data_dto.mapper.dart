// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_filter_data_dto.dart';

class SearchFilterDataDtoMapper extends ClassMapperBase<SearchFilterDataDto> {
  SearchFilterDataDtoMapper._();

  static SearchFilterDataDtoMapper? _instance;
  static SearchFilterDataDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchFilterDataDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SearchFilterDataDto';

  static String? _$query(SearchFilterDataDto v) => v.query;
  static const Field<SearchFilterDataDto, String> _f$query =
      Field('query', _$query, opt: true);

  @override
  final MappableFields<SearchFilterDataDto> fields = const {
    #query: _f$query,
  };
  @override
  final bool ignoreNull = true;

  static SearchFilterDataDto _instantiate(DecodingData data) {
    return SearchFilterDataDto(query: data.dec(_f$query));
  }

  @override
  final Function instantiate = _instantiate;

  static SearchFilterDataDto fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchFilterDataDto>(map);
  }

  static SearchFilterDataDto fromJsonString(String json) {
    return ensureInitialized().decodeJson<SearchFilterDataDto>(json);
  }
}

mixin SearchFilterDataDtoMappable {
  String toJsonString() {
    return SearchFilterDataDtoMapper.ensureInitialized()
        .encodeJson<SearchFilterDataDto>(this as SearchFilterDataDto);
  }

  Map<String, dynamic> toJson() {
    return SearchFilterDataDtoMapper.ensureInitialized()
        .encodeMap<SearchFilterDataDto>(this as SearchFilterDataDto);
  }

  SearchFilterDataDtoCopyWith<SearchFilterDataDto, SearchFilterDataDto,
      SearchFilterDataDto> get copyWith => _SearchFilterDataDtoCopyWithImpl<
          SearchFilterDataDto, SearchFilterDataDto>(
      this as SearchFilterDataDto, $identity, $identity);
  @override
  String toString() {
    return SearchFilterDataDtoMapper.ensureInitialized()
        .stringifyValue(this as SearchFilterDataDto);
  }

  @override
  bool operator ==(Object other) {
    return SearchFilterDataDtoMapper.ensureInitialized()
        .equalsValue(this as SearchFilterDataDto, other);
  }

  @override
  int get hashCode {
    return SearchFilterDataDtoMapper.ensureInitialized()
        .hashValue(this as SearchFilterDataDto);
  }
}

extension SearchFilterDataDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchFilterDataDto, $Out> {
  SearchFilterDataDtoCopyWith<$R, SearchFilterDataDto, $Out>
      get $asSearchFilterDataDto => $base.as(
          (v, t, t2) => _SearchFilterDataDtoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SearchFilterDataDtoCopyWith<$R, $In extends SearchFilterDataDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? query});
  SearchFilterDataDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SearchFilterDataDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchFilterDataDto, $Out>
    implements SearchFilterDataDtoCopyWith<$R, SearchFilterDataDto, $Out> {
  _SearchFilterDataDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchFilterDataDto> $mapper =
      SearchFilterDataDtoMapper.ensureInitialized();
  @override
  $R call({Object? query = $none}) =>
      $apply(FieldCopyWithData({if (query != $none) #query: query}));
  @override
  SearchFilterDataDto $make(CopyWithData data) =>
      SearchFilterDataDto(query: data.get(#query, or: $value.query));

  @override
  SearchFilterDataDtoCopyWith<$R2, SearchFilterDataDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SearchFilterDataDtoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
