import 'package:intl/intl.dart';

abstract final class AppRevenueFormat {
  static String createRevenueString(int revenue) {
    if (revenue == 0) return _formatZero();
    if (revenue < 0) return _formatNegative(revenue);

    return _formatPositive(revenue);
  }

  static String _formatZero() => r'$0';

  static String _formatNegative(int revenue) {
    final positiveValue = revenue.abs();
    final formatted = _formatWithCommas(positiveValue);

    return '-\$$formatted';
  }

  static String _formatPositive(int revenue) {
    final formatted = _formatWithCommas(revenue);

    return '\$$formatted';
  }

  static String _formatWithCommas(int value) {
    final formatter = NumberFormat('#,##0', 'en_US');

    return formatter.format(value);
  }
}
