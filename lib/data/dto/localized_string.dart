import 'package:dart_mappable/dart_mappable.dart';

import '../../common/app_locales.dart';

part 'localized_string.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class LocalizedString with LocalizedStringMappable {
  final String? en;
  final String? uk;

  const LocalizedString({this.en, this.uk});

  String? value(String langCode) {
    return switch (langCode) {
      final v when v == AppLocales.uk.name => uk,
      final v when v == AppLocales.en.name => en,
      _ => null,
    };
  }

  factory LocalizedString.fromJson(Map<String, dynamic> json) =>
      LocalizedStringMapper.fromJson(json);
}
