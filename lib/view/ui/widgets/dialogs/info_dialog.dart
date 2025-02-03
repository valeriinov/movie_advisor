import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/context/screen_metrics.dart';

import '../../resources/base_theme/dialogs/base_dialogs_styles_ext.dart';

class InfoDialog extends StatelessWidget {
  final Widget? title;
  final String? titleText;
  final Widget? content;
  final String? contentText;
  final String? buttonTitle;
  final VoidCallback? onButtonPressed;

  const InfoDialog({
    super.key,
    this.onButtonPressed,
    this.buttonTitle,
    this.titleText,
    this.title,
    this.content,
    this.contentText,
  });

  @override
  Widget build(BuildContext context) {
    final styles = context.baseDialogsStyles;

    return AlertDialog(
      title: title ??
          Text(
            titleText ?? 'App Name', // TODO: Change to correct dialog title
            textAlign: TextAlign.center,
          ),
      content: SizedBox(
        width: context.width,
        child: content ??
            Text(
              contentText ?? '',
              textAlign: TextAlign.center,
            ),
      ),
      actions: [
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
            onButtonPressed?.call();
          },
          child: Text(
            buttonTitle ?? 'OK', // TODO: Localize cancel button
            style: styles.dlgPrimBtnTextStyle,
          ),
        )
      ],
    );
  }
}
