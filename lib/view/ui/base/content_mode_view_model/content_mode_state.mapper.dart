// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'content_mode_state.dart';

class ContentModeStateMapper extends ClassMapperBase<ContentModeState> {
  ContentModeStateMapper._();

  static ContentModeStateMapper? _instance;
  static ContentModeStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ContentModeStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ContentModeState';

  static ContentMode _$mode(ContentModeState v) => v.mode;
  static const Field<ContentModeState, ContentMode> _f$mode =
      Field('mode', _$mode, opt: true, def: ContentMode.movies);
  static ContentModeStatus _$status(ContentModeState v) => v.status;
  static const Field<ContentModeState, ContentModeStatus> _f$status =
      Field('status', _$status, opt: true, def: const ContentModeBaseStatus());

  @override
  final MappableFields<ContentModeState> fields = const {
    #mode: _f$mode,
    #status: _f$status,
  };

  static ContentModeState _instantiate(DecodingData data) {
    return ContentModeState(
        mode: data.dec(_f$mode), status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ContentModeStateMappable {
  ContentModeStateCopyWith<ContentModeState, ContentModeState, ContentModeState>
      get copyWith =>
          _ContentModeStateCopyWithImpl<ContentModeState, ContentModeState>(
              this as ContentModeState, $identity, $identity);
  @override
  String toString() {
    return ContentModeStateMapper.ensureInitialized()
        .stringifyValue(this as ContentModeState);
  }

  @override
  bool operator ==(Object other) {
    return ContentModeStateMapper.ensureInitialized()
        .equalsValue(this as ContentModeState, other);
  }

  @override
  int get hashCode {
    return ContentModeStateMapper.ensureInitialized()
        .hashValue(this as ContentModeState);
  }
}

extension ContentModeStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ContentModeState, $Out> {
  ContentModeStateCopyWith<$R, ContentModeState, $Out>
      get $asContentModeState => $base
          .as((v, t, t2) => _ContentModeStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ContentModeStateCopyWith<$R, $In extends ContentModeState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({ContentMode? mode, ContentModeStatus? status});
  ContentModeStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ContentModeStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ContentModeState, $Out>
    implements ContentModeStateCopyWith<$R, ContentModeState, $Out> {
  _ContentModeStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ContentModeState> $mapper =
      ContentModeStateMapper.ensureInitialized();
  @override
  $R call({ContentMode? mode, ContentModeStatus? status}) =>
      $apply(FieldCopyWithData({
        if (mode != null) #mode: mode,
        if (status != null) #status: status
      }));
  @override
  ContentModeState $make(CopyWithData data) => ContentModeState(
      mode: data.get(#mode, or: $value.mode),
      status: data.get(#status, or: $value.status));

  @override
  ContentModeStateCopyWith<$R2, ContentModeState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ContentModeStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ContentModeBaseStatusMapper
    extends ClassMapperBase<ContentModeBaseStatus> {
  ContentModeBaseStatusMapper._();

  static ContentModeBaseStatusMapper? _instance;
  static ContentModeBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ContentModeBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ContentModeBaseStatus';

  static bool _$isLoading(ContentModeBaseStatus v) => v.isLoading;
  static const Field<ContentModeBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(ContentModeBaseStatus v) => v.errorMessage;
  static const Field<ContentModeBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(ContentModeBaseStatus v) => v.isInitialized;
  static const Field<ContentModeBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<ContentModeBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static ContentModeBaseStatus _instantiate(DecodingData data) {
    return ContentModeBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ContentModeBaseStatusMappable {
  ContentModeBaseStatusCopyWith<ContentModeBaseStatus, ContentModeBaseStatus,
      ContentModeBaseStatus> get copyWith => _ContentModeBaseStatusCopyWithImpl<
          ContentModeBaseStatus, ContentModeBaseStatus>(
      this as ContentModeBaseStatus, $identity, $identity);
  @override
  String toString() {
    return ContentModeBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as ContentModeBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return ContentModeBaseStatusMapper.ensureInitialized()
        .equalsValue(this as ContentModeBaseStatus, other);
  }

  @override
  int get hashCode {
    return ContentModeBaseStatusMapper.ensureInitialized()
        .hashValue(this as ContentModeBaseStatus);
  }
}

extension ContentModeBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ContentModeBaseStatus, $Out> {
  ContentModeBaseStatusCopyWith<$R, ContentModeBaseStatus, $Out>
      get $asContentModeBaseStatus => $base.as(
          (v, t, t2) => _ContentModeBaseStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ContentModeBaseStatusCopyWith<
    $R,
    $In extends ContentModeBaseStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  ContentModeBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ContentModeBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ContentModeBaseStatus, $Out>
    implements ContentModeBaseStatusCopyWith<$R, ContentModeBaseStatus, $Out> {
  _ContentModeBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ContentModeBaseStatus> $mapper =
      ContentModeBaseStatusMapper.ensureInitialized();
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
  ContentModeBaseStatus $make(CopyWithData data) => ContentModeBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  ContentModeBaseStatusCopyWith<$R2, ContentModeBaseStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ContentModeBaseStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
