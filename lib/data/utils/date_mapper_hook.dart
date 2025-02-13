import 'package:dart_mappable/dart_mappable.dart';

class DateMapperHook extends MappingHook {
  const DateMapperHook();

  @override
  dynamic beforeDecode(dynamic value) {
    if (value is! String) return value;

    return DateTime.tryParse(value);
  }
}
