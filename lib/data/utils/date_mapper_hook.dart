import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_utils/flutter_utils.dart';

class DateMapperHook extends MappingHook {
  const DateMapperHook();

  @override
  dynamic beforeDecode(dynamic value) {
    final date = switch (value) {
      String v? when !v.isNotBlank => null,
      String v? => DateTime.tryParse(v),
      Timestamp v? => v.toDate(),
      DateTime v? => v,
      _ => null,
    };

    if (date == null) return null;

    return date.isUtc
        ? DateTime.utc(
          date.year,
          date.month,
          date.day,
          date.hour,
          date.minute,
          date.second,
        )
        : DateTime(
          date.year,
          date.month,
          date.day,
          date.hour,
          date.minute,
          date.second,
        );
  }
}
