import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../resources/base_theme/dialogs/base_dialogs_styles_ext.dart';

class QuestionDialog extends StatelessWidget {
  final Widget? title;
  final String? titleText;
  final Widget? content;
  final String? contentText;
  final String? okButtonTitle;
  final String? cancelButtonTitle;
  final VoidCallback? onOkButtonPressed;
  final VoidCallback? onCancelButtonPressed;

  const QuestionDialog(
      {super.key,
      this.onOkButtonPressed,
      this.onCancelButtonPressed,
      this.okButtonTitle,
      this.cancelButtonTitle,
      this.titleText,
      this.title,
      this.content,
      this.contentText});

  @override
  Widget build(BuildContext context) {
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
      actions: [_buildActions(context)],
    );
  }

  Widget _buildActions(BuildContext context) {
    final styles = context.baseDialogsStyles;

    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              Navigator.of(context).pop();
              onCancelButtonPressed?.call();
            },
            child: Text(
              cancelButtonTitle ?? 'Cancel', // TODO: Localize cancel button
              style: styles.dlgPrimBtnTextStyle,
            ),
          ),
        ),
        8.gapHor(),
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              Navigator.of(context).pop();
              onOkButtonPressed?.call();
            },
            child: Text(
              okButtonTitle ?? 'OK', // TODO: Localize OK button
              style: styles.dlgPrimBtnTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
