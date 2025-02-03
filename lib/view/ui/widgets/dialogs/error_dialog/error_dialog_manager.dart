import 'package:flutter/material.dart';

import 'error_dialog.dart';

class ErrorDialogManager {
  final GlobalKey<NavigatorState> _rootNavKey;

  ErrorDialogManager({required GlobalKey<NavigatorState> rootNavKey})
      : _rootNavKey = rootNavKey;

  Future<void> showErrorDialog(String errorMessage) async {
    await showDialog(
      context: _rootNavKey.currentContext!,
      builder: (BuildContext context) {
        return ErrorDialog(
          errorMessage: errorMessage,
        );
      },
    );
  }
}
