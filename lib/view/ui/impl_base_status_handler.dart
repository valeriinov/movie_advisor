import 'package:flutter/material.dart';

import 'base/view_model/base_state.dart';
import 'base/view_model/base_status_handler.dart';
import 'base/view_model/ext/state_comparator.dart';
import 'widgets/dialogs/loading_dialog/loading_dialog_manager.dart';
import 'widgets/dialogs/toasts/toast_manager.dart';

class ImplBaseStatusHandler implements BaseStatusHandler {
  final LoadingDialogManager _loadingDialogManager;
  final ToastManager _toastManager;

  ImplBaseStatusHandler({
    required LoadingDialogManager loadingDialogManager,
    required ToastManager toastManager,
  })  : _loadingDialogManager = loadingDialogManager,
        _toastManager = toastManager;

  @override
  Future<void> handleStatus(
    BaseState<BaseStatus>? prev,
    BaseState<BaseStatus> next, {
    bool Function()? handleLoadingState,
    Widget Function()? loadingDialogBuilder,
  }) async {
    if (_hasNoChanges(prev, next)) return;

    if (next.status.hasError) {
      await _toggleShowLoading(false);
      _toastManager.showErrorToast(next.status.errorMessage!);
    } else if (handleLoadingState?.call() ?? true) {
      _toggleShowLoading(next.status.isLoading,
          loadingDialogBuilder: loadingDialogBuilder);
    }
  }

  bool _hasNoChanges(BaseState? prev, BaseState next) {
    return !next.isUpdateWithSelectors(
        prev, [(s) => s?.status.hasError, (s) => s?.status.isLoading],
        requireAll: false);
  }

  Future<void> _toggleShowLoading(bool isLoading,
      {Widget Function()? loadingDialogBuilder}) async {
    if (isLoading) {
      _loadingDialogManager.showLoadingDialog(loadingDialogBuilder);
    } else {
      _loadingDialogManager.closeLoadingDialog();
    }
  }
}
