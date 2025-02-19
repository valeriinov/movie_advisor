import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions_item.dart';

import '../../../resources/locale_keys.g.dart';
import '../widgets/keyboard_action_button.dart';

/// {@category Utils}
///
/// Provides utility methods for creating items for keyboard actions.
///
/// This class is used to create [KeyboardActionsItem] objects, which are used to
/// customize the keyboard toolbar actions for specific [FocusNode]s. It simplifies
/// the process of defining keyboard actions for text input fields.
abstract final class KeyboardActionsCreator {
  /// Creates a [KeyboardActionsItem] with specified configurations.
  ///
  /// The [focusNode] parameter is required and specifies the [FocusNode] for which
  /// the keyboard actions are being defined.
  ///
  /// The [buttonText] parameter allows setting the text for a custom action button
  /// on the keyboard toolbar. It defaults to `Done`.
  ///
  /// The [onButtonPressed] callback is triggered when the custom action button is
  /// pressed. If null, no custom button is displayed.
  ///
  /// The [displayArrows] parameter is a boolean that determines the visibility of
  /// navigation arrows in the keyboard toolbar. It defaults to `true`, which
  /// automatically shows arrows if navigation between fields is possible.
  ///
  /// Returns a [KeyboardActionsItem] which can be used to customize the keyboard
  /// toolbar for the given [FocusNode].
  static KeyboardActionsItem createActionItem(
      {required FocusNode focusNode,
      String? buttonText,
      VoidCallback? onButtonPressed,
      bool displayArrows = true}) {
    return KeyboardActionsItem(
      displayArrows: displayArrows,
      displayDoneButton: false,
      focusNode: focusNode,
      toolbarButtons: [
        if (onButtonPressed != null)
          (_) => KeyboardActionButton(
                onButtonPressed: onButtonPressed,
                buttonText: buttonText ?? LocaleKeys.keyboardCloseButton.tr(),
              ),
      ],
    );
  }

  static KeyboardActionsItem createActionItemWithButtons({
    required FocusNode focusNode,
    required List<Widget Function(FocusNode)> toolbarButtons,
    bool displayArrows = true,
  }) {
    return KeyboardActionsItem(
      displayArrows: displayArrows,
      displayDoneButton: false,
      focusNode: focusNode,
      toolbarButtons: toolbarButtons,
    );
  }
}
