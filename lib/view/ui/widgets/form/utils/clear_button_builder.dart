import 'package:flutter/material.dart';

/// {@category Utils}
///
/// Provides a utility method for creating a clear button for text input fields.
///
/// The [ClearButtonBuilder] simplifies the process of adding a clear button to
/// text fields, which allows users to quickly reset the input to its initial value.
/// The clear button is only visible when the text differs from the initial value
/// and the field is focused.
abstract final class ClearButtonBuilder {
  /// Builds a clear button for a [TextField] or [TextFormField].
  ///
  /// The [ctrl] parameter is the [TextEditingController] associated with the text input.
  ///
  /// The [initialValue] parameter represents the default value to reset the text to.
  ///
  /// The [isFocused] parameter determines whether the input field is currently focused.
  ///
  /// The optional [onClear] callback is triggered after the text is cleared.
  ///
  /// Returns an [IconButton] with a clear icon (`Icons.clear`) or `null` if
  /// the field is not focused or the text matches the initial value.
  static Widget? buildClearButton(
    TextEditingController ctrl,
    String? initialValue,
    bool isFocused, {
    VoidCallback? onClear,
  }) {
    if (ctrl.text == initialValue || !isFocused) return null;

    return IconButton(
      icon: const Icon(Icons.clear),
      onPressed: () {
        ctrl.text = initialValue ?? '';
        onClear?.call();
      },
    );
  }
}
