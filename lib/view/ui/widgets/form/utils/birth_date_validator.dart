import 'package:flutter_utils/flutter_utils.dart';

/// {@category Utils}
///
/// A validator for birth dates.
class BirthDateValidator {
  final String _errorText;
  final bool _isRequired;
  final int _minAge;

  /// Creates a [BirthDateValidator].
  ///
  /// The [isRequired] parameter indicates whether the field is required.
  /// The [minAge] parameter defines the minimum allowed age.
  ///
  /// Example:
  /// ```dart
  /// BirthDateValidator('Invalid birth date', minAge: 18);
  /// ```
  const BirthDateValidator(
    this._errorText, {
    bool isRequired = true,
    int minAge = 12,
  })  : _isRequired = isRequired,
        _minAge = minAge;

  String? validate(dynamic value) {
    assert(value is DateTime? || value is String?);

    if (!_isRequired && _isNullOrEmpty(value)) {
      return null;
    }

    if (_isValidDate(value) && _meetsMinAge(value)) {
      return null;
    }

    return _errorText;
  }

  bool _isNullOrEmpty(dynamic value) =>
      value == null || (value is String && value.isEmpty);

  bool _isValidDate(dynamic value) =>
      value is DateTime || (value is String && value.isDateTime);

  bool _meetsMinAge(dynamic value) {
    final date = _parseDate(value);

    if (date == null) return false;

    final minDate = DateTime.now().subtract(Duration(days: _minAge * 365));

    return date.isBefore(minDate);
  }

  DateTime? _parseDate(dynamic value) {
    if (value is DateTime) return value;

    if (value is String && value.isDateTime) return DateTime.tryParse(value);

    return null;
  }
}
