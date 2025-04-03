import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../resources/locale_keys.g.dart';
import 'question_dialog.dart';

class ExitDialog extends StatelessWidget {
  final VoidCallback onConfirm;

  const ExitDialog({super.key, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return QuestionDialog(
      contentText: LocaleKeys.exitDialog.tr(),
      onOkButtonPressed: onConfirm,
    );
  }
}
