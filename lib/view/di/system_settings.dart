import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';

/// {@category Utils}
///
/// Provides system-wide settings initialization for the application.
/// The [SystemSettings] class manages the setup of critical system-level
/// features such as localization and device orientation.
///
/// Example:
///
/// ```dart
/// await SystemSettings.initializeSystemSettings();
/// ```
abstract final class SystemSettings {
  /// Initializes system settings required for the application.
  ///
  /// This setup should be called before the app's main logic runs.
  static Future<void> initializeSystemSettings() async {
    WidgetsFlutterBinding.ensureInitialized();

    // localization
    await EasyLocalization.ensureInitialized();

    // Restrict orientation to portrait
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
