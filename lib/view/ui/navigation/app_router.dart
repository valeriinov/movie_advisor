import 'package:flutter/material.dart';

/// {@category Navigation}
///
/// The [AppRouter] interface defines the foundational structure for setting up
/// and managing navigation within the application.
abstract interface class AppRouter {
  /// Provides the root [NavigatorState] key for the application.
  ///
  /// The [rootNavKey] is useful for initializing events
  /// such as displaying dialogs or performing navigation
  /// in the context of the root navigator.
  ///
  /// Example:
  /// ```dart
  /// final navKey = appRouter.rootNavKey;
  /// navKey.currentState?.showDialog(
  ///   context: navKey.currentContext!,
  ///   builder: (context) => AlertDialog(title: Text('Example')),
  /// );
  /// ```
  GlobalKey<NavigatorState> get rootNavKey;

  /// Provides a simplified way to access the [BuildContext]
  /// associated with the root navigator.
  ///
  /// The [rootNavContext] allows for convenient retrieval of the
  /// root navigator's context, useful for tasks such as displaying
  /// dialogs or performing navigation.
  ///
  /// Example:
  /// ```dart
  /// final context = appRouter.rootNavContext;
  /// showDialog(
  ///   context: context,
  ///   builder: (context) => AlertDialog(title: Text('Example')),
  /// );
  /// ```
  BuildContext get rootNavContext;

  /// Configures and returns the [RouterConfig] for the application.
  ///
  /// The [routerConfig] provides the application's routing logic for
  /// use with Navigator 2.0.
  ///
  /// Example:
  /// ```dart
  /// final routerConfig = appRouter.routerConfig;
  /// runApp(MaterialApp.router(
  ///   routerConfig: routerConfig,
  /// ));
  /// ```
  RouterConfig<Object> get routerConfig;
}
