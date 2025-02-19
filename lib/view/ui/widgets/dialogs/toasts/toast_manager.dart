import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'error_toast.dart';
import 'info_toast.dart';
import 'success_toast.dart';

class ToastManager {
  final GlobalKey<NavigatorState> _rootNavigatorKey;
  final FToast _fToast;

  bool _isInitialized = false;

  ToastManager(
      {required GlobalKey<NavigatorState> rootNavigatorKey,
      required FToast fToast})
      : _rootNavigatorKey = rootNavigatorKey,
        _fToast = fToast;

  void showSuccessToast(
    String message, {
    Duration? toastDuration,
  }) {
    _showToast(
      message,
      toastDuration: toastDuration,
      child: SuccessToast(
        content: message,
      ),
    );
  }

  void showInfoToast(
    String message, {
    Duration? toastDuration,
  }) {
    _showToast(
      message,
      toastDuration: toastDuration,
      child: InfoToast(
        content: message,
      ),
    );
  }

  void showErrorToast(
    String message, {
    Duration? toastDuration,
    VoidCallback? onClose,
  }) {
    _showToast(
      message,
      toastDuration: toastDuration,
      child: ErrorToast(
        content: message,
      ),
    );
  }

  void _showToast(
    String message, {
    Duration? toastDuration,
    required Widget child,
  }) {
    _handleInitialized();

    _fToast.showToast(
      child: child,
      gravity: ToastGravity.BOTTOM,
      toastDuration: toastDuration ?? const Duration(seconds: 2),
      positionedToastBuilder: (ctx, child, gravity) {
        return Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: child,
        );
      },
    );
  }

  void _handleInitialized() {
    if (_isInitialized) return;

    final ctx = _rootNavigatorKey.currentContext;

    if (ctx != null) {
      _fToast.init(ctx);
      _isInitialized = true;
    }
  }
}
