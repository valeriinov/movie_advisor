import 'package:intl/intl.dart';

abstract final class AppDateFormats {
  static const String _monthDayYear = 'MMMM d, yyyy';
  static const String _yearMonthDay = 'yyyy-MM-dd';
  static const String _dayMonthYear = 'd MMM yyyy';
  static const String _dayMonthYearDots = 'dd.MM.yyyy';
  static const String _yearOnly = 'yyyy';

  /// String in the format: "January 1, 2022"
  static String monthDayYearFormat(DateTime date, [String? locale]) {
    return DateFormat(_monthDayYear, locale).format(date);
  }

  /// String in the format: "2022-01-01"
  static String yearMonthDayFormat(DateTime date, [String? locale]) {
    return DateFormat(_yearMonthDay, locale).format(date);
  }

  /// String in the format: "8 Nov 2024"
  static String dayMonthYearFormat(DateTime date, [String? locale]) {
    return DateFormat(_dayMonthYear, locale).format(date);
  }

  /// String in the format: "11.11.2024"
  static String dayMonthYearDotsFormat(DateTime date, [String? locale]) {
    return DateFormat(_dayMonthYearDots, locale).format(date);
  }

  /// String in the format: "2025"
  static String yearFormat(DateTime date, [String? locale]) {
    return DateFormat(_yearOnly, locale).format(date);
  }
}
