// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'list_with_pagination_data.dart';

class ListWithPaginationDataMapper
    extends ClassMapperBase<ListWithPaginationData> {
  ListWithPaginationDataMapper._();

  static ListWithPaginationDataMapper? _instance;
  static ListWithPaginationDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ListWithPaginationDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ListWithPaginationData';
  @override
  Function get typeFactory => <T>(f) => f<ListWithPaginationData<T>>();

  static List<dynamic> _$items(ListWithPaginationData v) => v.items;
  static dynamic _arg$items<T>(f) => f<List<T>>();
  static const Field<ListWithPaginationData, List<dynamic>> _f$items =
      Field('items', _$items, arg: _arg$items);
  static int _$currentPage(ListWithPaginationData v) => v.currentPage;
  static const Field<ListWithPaginationData, int> _f$currentPage =
      Field('currentPage', _$currentPage, opt: true, def: -1);
  static bool _$isLastPage(ListWithPaginationData v) => v.isLastPage;
  static const Field<ListWithPaginationData, bool> _f$isLastPage =
      Field('isLastPage', _$isLastPage, opt: true, def: true);

  @override
  final MappableFields<ListWithPaginationData> fields = const {
    #items: _f$items,
    #currentPage: _f$currentPage,
    #isLastPage: _f$isLastPage,
  };

  static ListWithPaginationData<T> _instantiate<T>(DecodingData data) {
    return ListWithPaginationData(
        items: data.dec(_f$items),
        currentPage: data.dec(_f$currentPage),
        isLastPage: data.dec(_f$isLastPage));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ListWithPaginationDataMappable<T> {
  ListWithPaginationDataCopyWith<ListWithPaginationData<T>,
          ListWithPaginationData<T>, ListWithPaginationData<T>, T>
      get copyWith => _ListWithPaginationDataCopyWithImpl<
          ListWithPaginationData<T>,
          ListWithPaginationData<T>,
          T>(this as ListWithPaginationData<T>, $identity, $identity);
  @override
  String toString() {
    return ListWithPaginationDataMapper.ensureInitialized()
        .stringifyValue(this as ListWithPaginationData<T>);
  }

  @override
  bool operator ==(Object other) {
    return ListWithPaginationDataMapper.ensureInitialized()
        .equalsValue(this as ListWithPaginationData<T>, other);
  }

  @override
  int get hashCode {
    return ListWithPaginationDataMapper.ensureInitialized()
        .hashValue(this as ListWithPaginationData<T>);
  }
}

extension ListWithPaginationDataValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, ListWithPaginationData<T>, $Out> {
  ListWithPaginationDataCopyWith<$R, ListWithPaginationData<T>, $Out, T>
      get $asListWithPaginationData => $base.as((v, t, t2) =>
          _ListWithPaginationDataCopyWithImpl<$R, $Out, T>(v, t, t2));
}

abstract class ListWithPaginationDataCopyWith<
    $R,
    $In extends ListWithPaginationData<T>,
    $Out,
    T> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get items;
  $R call({List<T>? items, int? currentPage, bool? isLastPage});
  ListWithPaginationDataCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ListWithPaginationDataCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, ListWithPaginationData<T>, $Out>
    implements
        ListWithPaginationDataCopyWith<$R, ListWithPaginationData<T>, $Out, T> {
  _ListWithPaginationDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ListWithPaginationData> $mapper =
      ListWithPaginationDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get items => ListCopyWith(
      $value.items,
      (v, t) => ObjectCopyWith(v, $identity, t),
      (v) => call(items: v));
  @override
  $R call({List<T>? items, int? currentPage, bool? isLastPage}) =>
      $apply(FieldCopyWithData({
        if (items != null) #items: items,
        if (currentPage != null) #currentPage: currentPage,
        if (isLastPage != null) #isLastPage: isLastPage
      }));
  @override
  ListWithPaginationData<T> $make(CopyWithData data) => ListWithPaginationData(
      items: data.get(#items, or: $value.items),
      currentPage: data.get(#currentPage, or: $value.currentPage),
      isLastPage: data.get(#isLastPage, or: $value.isLastPage));

  @override
  ListWithPaginationDataCopyWith<$R2, ListWithPaginationData<T>, $Out2, T>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ListWithPaginationDataCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}
