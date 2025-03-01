import 'package:flutter_utils/flutter_utils.dart';

/// {@category Utils}
///
/// A validator for email addresses.
class AppEmailValidator extends FieldValidator<String> {
  final String _errorText;
  final String? _requiredErrorText;
  final bool _isRequired;

  /// Creates an [AppEmailValidator].
  ///
  /// The [errorText] parameter is the error message to be
  /// returned if the value is invalid.
  /// The [isRequired] parameter indicates whether the field is required.
  /// The [requiredErrorText] parameter is the error message to be
  /// returned if the field is required and the value is empty.
  ///
  /// Example:
  /// ```dart
  /// AppEmailValidator('Invalid email', requiredErrorText: 'Email is required');
  /// ```
  const AppEmailValidator(
    this._errorText, {
    bool isRequired = true,
    String? requiredErrorText,
  }) : _isRequired = isRequired,
       _requiredErrorText = requiredErrorText;

  @override
  String? validate(String? value) {
    if (value.isNullOrEmpty) {
      return _isRequired ? (_requiredErrorText ?? _errorText) : null;
    }

    return value!.isEmail ? null : _errorText;
  }
}

/// {@category Utils}
///
/// A validator for passwords.
class AppPasswordValidator extends FieldValidator<String> {
  final String _errorText;
  final String? _requiredErrorText;
  final bool _isRequired;

  final int _minLength;
  final bool _isNumericRequired;
  final bool _isSmallLetterRequired;
  final bool _isBigLetterRequired;
  final bool _isSpecialCharRequired;

  /// Creates a [AppPasswordValidator].
  ///
  /// The [errorText] parameter is the error message to be
  /// returned if the value is invalid.
  /// The [isRequired] parameter indicates whether the field is required.
  /// The [requiredErrorText] parameter is the error message to be
  /// returned if the field is required and the value is empty.
  /// The [minLength] parameter is the minimum length of the password.
  /// The [isNumericRequired] parameter is whether at least one numeric character is required.
  /// The [isSmallLetterRequired] parameter is whether at least one lowercase letter is required.
  /// The [isBigLetterRequired] parameter is whether at least one uppercase letter is required.
  /// The [isSpecialCharRequired] parameter is whether at least one special character is required.
  ///
  /// Example:
  /// ```dart
  /// AppPasswordValidator('Invalid password', requiredErrorText: 'Password is required', minLength: 8);
  /// ```
  const AppPasswordValidator(
    this._errorText, {
    bool isRequired = true,
    String? requiredErrorText,
    int minLength = 8,
    bool isNumericRequired = true,
    bool isSmallLetterRequired = true,
    bool isBigLetterRequired = true,
    bool isSpecialCharRequired = false,
  }) : _isRequired = isRequired,
       _requiredErrorText = requiredErrorText,
       _minLength = minLength,
       _isNumericRequired = isNumericRequired,
       _isSmallLetterRequired = isSmallLetterRequired,
       _isBigLetterRequired = isBigLetterRequired,
       _isSpecialCharRequired = isSpecialCharRequired;

  @override
  String? validate(String? value) {
    if (value.isNullOrEmpty) {
      return _isRequired ? _requiredErrorText ?? _errorText : null;
    }

    return value!.isValidPassword(
          minLength: _minLength,
          isNumericRequired: _isNumericRequired,
          isSmallLetterRequired: _isSmallLetterRequired,
          isBigLetterRequired: _isBigLetterRequired,
          isSpecialCharRequired: _isSpecialCharRequired,
        )
        ? null
        : _errorText;
  }
}
