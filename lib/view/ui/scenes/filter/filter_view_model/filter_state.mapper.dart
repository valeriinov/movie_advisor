// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'filter_state.dart';

class FilterStateMapper extends ClassMapperBase<FilterState> {
  FilterStateMapper._();

  static FilterStateMapper? _instance;
  static FilterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FilterState';

  static FilterStatus _$status(FilterState v) => v.status;
  static const Field<FilterState, FilterStatus> _f$status =
      Field('status', _$status, opt: true, def: const FilterBaseStatus());

  @override
  final MappableFields<FilterState> fields = const {
    #status: _f$status,
  };

  static FilterState _instantiate(DecodingData data) {
    return FilterState(status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin FilterStateMappable {
  FilterStateCopyWith<FilterState, FilterState, FilterState> get copyWith =>
      _FilterStateCopyWithImpl(this as FilterState, $identity, $identity);
  @override
  String toString() {
    return FilterStateMapper.ensureInitialized()
        .stringifyValue(this as FilterState);
  }

  @override
  bool operator ==(Object other) {
    return FilterStateMapper.ensureInitialized()
        .equalsValue(this as FilterState, other);
  }

  @override
  int get hashCode {
    return FilterStateMapper.ensureInitialized().hashValue(this as FilterState);
  }
}

extension FilterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FilterState, $Out> {
  FilterStateCopyWith<$R, FilterState, $Out> get $asFilterState =>
      $base.as((v, t, t2) => _FilterStateCopyWithImpl(v, t, t2));
}

abstract class FilterStateCopyWith<$R, $In extends FilterState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({FilterStatus? status});
  FilterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FilterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FilterState, $Out>
    implements FilterStateCopyWith<$R, FilterState, $Out> {
  _FilterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FilterState> $mapper =
      FilterStateMapper.ensureInitialized();
  @override
  $R call({FilterStatus? status}) =>
      $apply(FieldCopyWithData({if (status != null) #status: status}));
  @override
  FilterState $make(CopyWithData data) =>
      FilterState(status: data.get(#status, or: $value.status));

  @override
  FilterStateCopyWith<$R2, FilterState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FilterStateCopyWithImpl($value, $cast, t);
}

class FilterBaseStatusMapper extends ClassMapperBase<FilterBaseStatus> {
  FilterBaseStatusMapper._();

  static FilterBaseStatusMapper? _instance;
  static FilterBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FilterBaseStatus';

  static bool _$isLoading(FilterBaseStatus v) => v.isLoading;
  static const Field<FilterBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(FilterBaseStatus v) => v.errorMessage;
  static const Field<FilterBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(FilterBaseStatus v) => v.isInitialized;
  static const Field<FilterBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<FilterBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static FilterBaseStatus _instantiate(DecodingData data) {
    return FilterBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin FilterBaseStatusMappable {
  FilterBaseStatusCopyWith<FilterBaseStatus, FilterBaseStatus, FilterBaseStatus>
      get copyWith => _FilterBaseStatusCopyWithImpl(
          this as FilterBaseStatus, $identity, $identity);
  @override
  String toString() {
    return FilterBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as FilterBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return FilterBaseStatusMapper.ensureInitialized()
        .equalsValue(this as FilterBaseStatus, other);
  }

  @override
  int get hashCode {
    return FilterBaseStatusMapper.ensureInitialized()
        .hashValue(this as FilterBaseStatus);
  }
}

extension FilterBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FilterBaseStatus, $Out> {
  FilterBaseStatusCopyWith<$R, FilterBaseStatus, $Out>
      get $asFilterBaseStatus =>
          $base.as((v, t, t2) => _FilterBaseStatusCopyWithImpl(v, t, t2));
}

abstract class FilterBaseStatusCopyWith<$R, $In extends FilterBaseStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  FilterBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FilterBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FilterBaseStatus, $Out>
    implements FilterBaseStatusCopyWith<$R, FilterBaseStatus, $Out> {
  _FilterBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FilterBaseStatus> $mapper =
      FilterBaseStatusMapper.ensureInitialized();
  @override
  $R call(
          {bool? isLoading,
          Object? errorMessage = $none,
          bool? isInitialized}) =>
      $apply(FieldCopyWithData({
        if (isLoading != null) #isLoading: isLoading,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (isInitialized != null) #isInitialized: isInitialized
      }));
  @override
  FilterBaseStatus $make(CopyWithData data) => FilterBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  FilterBaseStatusCopyWith<$R2, FilterBaseStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FilterBaseStatusCopyWithImpl($value, $cast, t);
}

class FilterBaseInitStatusMapper extends ClassMapperBase<FilterBaseInitStatus> {
  FilterBaseInitStatusMapper._();

  static FilterBaseInitStatusMapper? _instance;
  static FilterBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FilterBaseInitStatus';

  static bool _$isLoading(FilterBaseInitStatus v) => v.isLoading;
  static const Field<FilterBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(FilterBaseInitStatus v) => v.errorMessage;
  static const Field<FilterBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(FilterBaseInitStatus v) => v.isInitialized;
  static const Field<FilterBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<FilterBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static FilterBaseInitStatus _instantiate(DecodingData data) {
    return FilterBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin FilterBaseInitStatusMappable {
  FilterBaseInitStatusCopyWith<FilterBaseInitStatus, FilterBaseInitStatus,
          FilterBaseInitStatus>
      get copyWith => _FilterBaseInitStatusCopyWithImpl(
          this as FilterBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return FilterBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as FilterBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return FilterBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as FilterBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return FilterBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as FilterBaseInitStatus);
  }
}

extension FilterBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FilterBaseInitStatus, $Out> {
  FilterBaseInitStatusCopyWith<$R, FilterBaseInitStatus, $Out>
      get $asFilterBaseInitStatus =>
          $base.as((v, t, t2) => _FilterBaseInitStatusCopyWithImpl(v, t, t2));
}

abstract class FilterBaseInitStatusCopyWith<
    $R,
    $In extends FilterBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  FilterBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FilterBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FilterBaseInitStatus, $Out>
    implements FilterBaseInitStatusCopyWith<$R, FilterBaseInitStatus, $Out> {
  _FilterBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FilterBaseInitStatus> $mapper =
      FilterBaseInitStatusMapper.ensureInitialized();
  @override
  $R call(
          {bool? isLoading,
          Object? errorMessage = $none,
          bool? isInitialized}) =>
      $apply(FieldCopyWithData({
        if (isLoading != null) #isLoading: isLoading,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (isInitialized != null) #isInitialized: isInitialized
      }));
  @override
  FilterBaseInitStatus $make(CopyWithData data) => FilterBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  FilterBaseInitStatusCopyWith<$R2, FilterBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _FilterBaseInitStatusCopyWithImpl($value, $cast, t);
}
