import 'package:flutter/material.dart';
import 'dart:async';

import 'loading_dialog.dart';

class LoadingDialogManager {
  final GlobalKey<NavigatorState> _rootNavKey;

  OverlayEntry? _overlayEntry;
  Completer<void>? _dialogCompleter;

  LoadingDialogManager({required GlobalKey<NavigatorState> rootNavKey})
    : _rootNavKey = rootNavKey;

  Future<void> showLoadingDialog([Widget Function()? dialogBuilder]) async {
    if (_isDialogVisible()) return;

    _initializeCompleter();

    _showOverlay(dialogBuilder?.call() ?? const LoadingDialog());

    await _dialogCompleter?.future;

    _removeOverlay();
  }

  void closeLoadingDialog() {
    if (_isDialogVisible()) {
      _dialogCompleter?.complete();
    }
  }

  void _initializeCompleter() {
    _dialogCompleter = Completer<void>();
  }

  bool _isDialogVisible() {
    return _overlayEntry != null;
  }

  void _showOverlay(Widget dialog) {
    _overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          ModalBarrier(dismissible: false, color: Colors.transparent),
          Center(child: dialog),
        ],
      ),
    );

    _rootNavKey.currentState?.overlay?.insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    _dialogCompleter = null;
  }
}
