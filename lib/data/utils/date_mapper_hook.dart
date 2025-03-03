import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_mappable/dart_mappable.dart';

class DateMapperHook extends MappingHook {
  const DateMapperHook();

  @override
  dynamic beforeDecode(dynamic value) {
    return switch (value) {
      String v => DateTime.tryParse(v),
      Timestamp v => v.toDate(),
      _ => value,
    };
  }
}
