import 'package:flutter/material.dart';

import 'base_state.dart';

/// {@category StateManagement}
///
/// A utility class that provides a standardized
/// way to handle common state changes.
///
/// Contains functionality to show an error dialog or a loading indicator
/// based on the state's loading and error status.
abstract interface class BaseStatusHandler {
  /// Handles the transition between the previous [prev] and current [next] states
  /// by processing the [BaseStatus] of the [next] state.
  ///
  /// The [prev] parameter represents the previous state.
  /// The [next] parameter represents the current state.
  /// The [handleLoadingState] parameter is a predicate that determines whether
  /// to show the loading indicator.
  /// If not provided, loading state is handled by default.
  /// The [loadingDialogBuilder] parameter is a widget builder for displaying the loading dialog.
  /// If not provided, a default loading indicator will be used.
  Future<void> handleStatus(
    BaseState? prev,
    BaseState next, {
    bool Function()? handleLoadingState,
    Widget Function()? loadingDialogBuilder,
  });
}
