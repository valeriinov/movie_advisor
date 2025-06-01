import '../../../app_locales.dart';

extension LocalizedSortStr on String {
  String localizedSortValue(String langCode) {
    if (_isUkLocale(langCode)) {
      return _mapString(this);
    }

    return _normalize(this);
  }

  bool _isUkLocale(String locale) {
    return locale == AppLocales.uk.name;
  }

  String _mapString(String input) {
    final buffer = StringBuffer();

    for (final codePoint in _normalize(input).runes) {
      final ch = String.fromCharCode(codePoint);

      buffer.write(_ukMap[ch] ?? ch);
    }

    return buffer.toString();
  }

  String _normalize(String input) =>
      input.toLowerCase().replaceAll(RegExp(r'\s+'), '');
}

const Map<String, String> _ukMap = {
  'а': 'a1',
  'б': 'a2',
  'в': 'a3',
  'г': 'a4',
  'ґ': 'a5',
  'д': 'a6',
  'е': 'a7',
  'є': 'a8',
  'ж': 'a9',
  'з': 'b1',
  'и': 'b2',
  'і': 'b3',
  'ї': 'b4',
  'й': 'b5',
  'к': 'b6',
  'л': 'b7',
  'м': 'b8',
  'н': 'b9',
  'о': 'c1',
  'п': 'c2',
  'р': 'c3',
  'с': 'c4',
  'т': 'c5',
  'у': 'c6',
  'ф': 'c7',
  'х': 'c8',
  'ц': 'c9',
  'ч': 'd1',
  'ш': 'd2',
  'щ': 'd3',
  'ь': 'd4',
  'ю': 'd5',
  'я': 'd6',
};
