import 'package:flutter/material.dart';

/// {@category Widgets}
///
/// A customizable button for keyboard action toolbars.
///
/// [KeyboardActionButton] is typically used in custom keyboard toolbars to provide
/// quick actions, such as closing the keyboard or submitting input. It displays
/// a [TextButton] with configurable text and behavior.
class KeyboardActionButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback onButtonPressed;

  const KeyboardActionButton({
    super.key,
    required this.onButtonPressed,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onButtonPressed,
      child: Text(
        buttonText ?? 'Done', // TODO Localize the button,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}
