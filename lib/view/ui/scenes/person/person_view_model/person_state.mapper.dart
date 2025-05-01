// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person_state.dart';

class PersonStateMapper extends ClassMapperBase<PersonState> {
  PersonStateMapper._();

  static PersonStateMapper? _instance;
  static PersonStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonStateMapper._());
      PersonDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PersonState';

  static PersonData _$person(PersonState v) => v.person;
  static const Field<PersonState, PersonData> _f$person =
      Field('person', _$person);
  static PersonTab _$currentTab(PersonState v) => v.currentTab;
  static const Field<PersonState, PersonTab> _f$currentTab =
      Field('currentTab', _$currentTab, opt: true, def: PersonTab.biography);
  static PersonStatus _$status(PersonState v) => v.status;
  static const Field<PersonState, PersonStatus> _f$status =
      Field('status', _$status, opt: true, def: const PersonBaseStatus());

  @override
  final MappableFields<PersonState> fields = const {
    #person: _f$person,
    #currentTab: _f$currentTab,
    #status: _f$status,
  };

  static PersonState _instantiate(DecodingData data) {
    return PersonState(
        person: data.dec(_f$person),
        currentTab: data.dec(_f$currentTab),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin PersonStateMappable {
  PersonStateCopyWith<PersonState, PersonState, PersonState> get copyWith =>
      _PersonStateCopyWithImpl<PersonState, PersonState>(
          this as PersonState, $identity, $identity);
  @override
  String toString() {
    return PersonStateMapper.ensureInitialized()
        .stringifyValue(this as PersonState);
  }

  @override
  bool operator ==(Object other) {
    return PersonStateMapper.ensureInitialized()
        .equalsValue(this as PersonState, other);
  }

  @override
  int get hashCode {
    return PersonStateMapper.ensureInitialized().hashValue(this as PersonState);
  }
}

extension PersonStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonState, $Out> {
  PersonStateCopyWith<$R, PersonState, $Out> get $asPersonState =>
      $base.as((v, t, t2) => _PersonStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PersonStateCopyWith<$R, $In extends PersonState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PersonDataCopyWith<$R, PersonData, PersonData> get person;
  $R call({PersonData? person, PersonTab? currentTab, PersonStatus? status});
  PersonStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PersonStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonState, $Out>
    implements PersonStateCopyWith<$R, PersonState, $Out> {
  _PersonStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonState> $mapper =
      PersonStateMapper.ensureInitialized();
  @override
  PersonDataCopyWith<$R, PersonData, PersonData> get person =>
      $value.person.copyWith.$chain((v) => call(person: v));
  @override
  $R call({PersonData? person, PersonTab? currentTab, PersonStatus? status}) =>
      $apply(FieldCopyWithData({
        if (person != null) #person: person,
        if (currentTab != null) #currentTab: currentTab,
        if (status != null) #status: status
      }));
  @override
  PersonState $make(CopyWithData data) => PersonState(
      person: data.get(#person, or: $value.person),
      currentTab: data.get(#currentTab, or: $value.currentTab),
      status: data.get(#status, or: $value.status));

  @override
  PersonStateCopyWith<$R2, PersonState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PersonStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PersonBaseStatusMapper extends ClassMapperBase<PersonBaseStatus> {
  PersonBaseStatusMapper._();

  static PersonBaseStatusMapper? _instance;
  static PersonBaseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonBaseStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PersonBaseStatus';

  static bool _$isLoading(PersonBaseStatus v) => v.isLoading;
  static const Field<PersonBaseStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(PersonBaseStatus v) => v.errorMessage;
  static const Field<PersonBaseStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(PersonBaseStatus v) => v.isInitialized;
  static const Field<PersonBaseStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: false);

  @override
  final MappableFields<PersonBaseStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static PersonBaseStatus _instantiate(DecodingData data) {
    return PersonBaseStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin PersonBaseStatusMappable {
  PersonBaseStatusCopyWith<PersonBaseStatus, PersonBaseStatus, PersonBaseStatus>
      get copyWith =>
          _PersonBaseStatusCopyWithImpl<PersonBaseStatus, PersonBaseStatus>(
              this as PersonBaseStatus, $identity, $identity);
  @override
  String toString() {
    return PersonBaseStatusMapper.ensureInitialized()
        .stringifyValue(this as PersonBaseStatus);
  }

  @override
  bool operator ==(Object other) {
    return PersonBaseStatusMapper.ensureInitialized()
        .equalsValue(this as PersonBaseStatus, other);
  }

  @override
  int get hashCode {
    return PersonBaseStatusMapper.ensureInitialized()
        .hashValue(this as PersonBaseStatus);
  }
}

extension PersonBaseStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonBaseStatus, $Out> {
  PersonBaseStatusCopyWith<$R, PersonBaseStatus, $Out>
      get $asPersonBaseStatus => $base
          .as((v, t, t2) => _PersonBaseStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PersonBaseStatusCopyWith<$R, $In extends PersonBaseStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  PersonBaseStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PersonBaseStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonBaseStatus, $Out>
    implements PersonBaseStatusCopyWith<$R, PersonBaseStatus, $Out> {
  _PersonBaseStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonBaseStatus> $mapper =
      PersonBaseStatusMapper.ensureInitialized();
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
  PersonBaseStatus $make(CopyWithData data) => PersonBaseStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  PersonBaseStatusCopyWith<$R2, PersonBaseStatus, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PersonBaseStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PersonBaseInitStatusMapper extends ClassMapperBase<PersonBaseInitStatus> {
  PersonBaseInitStatusMapper._();

  static PersonBaseInitStatusMapper? _instance;
  static PersonBaseInitStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonBaseInitStatusMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PersonBaseInitStatus';

  static bool _$isLoading(PersonBaseInitStatus v) => v.isLoading;
  static const Field<PersonBaseInitStatus, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(PersonBaseInitStatus v) => v.errorMessage;
  static const Field<PersonBaseInitStatus, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static bool _$isInitialized(PersonBaseInitStatus v) => v.isInitialized;
  static const Field<PersonBaseInitStatus, bool> _f$isInitialized =
      Field('isInitialized', _$isInitialized, opt: true, def: true);

  @override
  final MappableFields<PersonBaseInitStatus> fields = const {
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
    #isInitialized: _f$isInitialized,
  };

  static PersonBaseInitStatus _instantiate(DecodingData data) {
    return PersonBaseInitStatus(
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage),
        isInitialized: data.dec(_f$isInitialized));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin PersonBaseInitStatusMappable {
  PersonBaseInitStatusCopyWith<PersonBaseInitStatus, PersonBaseInitStatus,
      PersonBaseInitStatus> get copyWith => _PersonBaseInitStatusCopyWithImpl<
          PersonBaseInitStatus, PersonBaseInitStatus>(
      this as PersonBaseInitStatus, $identity, $identity);
  @override
  String toString() {
    return PersonBaseInitStatusMapper.ensureInitialized()
        .stringifyValue(this as PersonBaseInitStatus);
  }

  @override
  bool operator ==(Object other) {
    return PersonBaseInitStatusMapper.ensureInitialized()
        .equalsValue(this as PersonBaseInitStatus, other);
  }

  @override
  int get hashCode {
    return PersonBaseInitStatusMapper.ensureInitialized()
        .hashValue(this as PersonBaseInitStatus);
  }
}

extension PersonBaseInitStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonBaseInitStatus, $Out> {
  PersonBaseInitStatusCopyWith<$R, PersonBaseInitStatus, $Out>
      get $asPersonBaseInitStatus => $base.as(
          (v, t, t2) => _PersonBaseInitStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PersonBaseInitStatusCopyWith<
    $R,
    $In extends PersonBaseInitStatus,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isLoading, String? errorMessage, bool? isInitialized});
  PersonBaseInitStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PersonBaseInitStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonBaseInitStatus, $Out>
    implements PersonBaseInitStatusCopyWith<$R, PersonBaseInitStatus, $Out> {
  _PersonBaseInitStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonBaseInitStatus> $mapper =
      PersonBaseInitStatusMapper.ensureInitialized();
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
  PersonBaseInitStatus $make(CopyWithData data) => PersonBaseInitStatus(
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      isInitialized: data.get(#isInitialized, or: $value.isInitialized));

  @override
  PersonBaseInitStatusCopyWith<$R2, PersonBaseInitStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PersonBaseInitStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
