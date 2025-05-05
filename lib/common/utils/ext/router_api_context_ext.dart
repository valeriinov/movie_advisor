import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../view/ui/navigation/app_routes.dart';

extension RouterApiContextExt on BuildContext {
  /// Navigates back if possible, otherwise navigates to the Home Screen route.
  /// This is particularly useful when a screen is opened at the app startup through a deep link.
  ///
  /// In scenarios where the app is launched via a deep link and the
  /// navigation stack is not established, this method ensures that
  /// users can navigate to the default location if they cannot go back.
  ///
  /// Example:
  /// ```
  /// context.goBackOrHome();
  /// ```
  void goBackOrHome() {
    return canPop() ? pop() : go(AppRoutes.home);
  }
}
