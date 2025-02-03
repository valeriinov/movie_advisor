import 'package:flutter/material.dart';

/// {@category Widgets}
///
/// A widget that displays a banner over its child to indicate the
/// active app flavor. Commonly used in development or staging builds
/// to differentiate between environments.
///
/// The [FlavorBanner] wraps the provided [child] widget and overlays a
/// banner with the given [name] at the bottom-left corner when [isVisible] is `true`.
///
/// Example:
///
/// ```dart
/// FlavorBanner(
///   name: 'dev',
///   isVisible: true,
///   child: MyApp(),
/// );
/// ```
class FlavorBanner extends StatelessWidget {
  /// The text displayed on the banner.
  final String name;

  /// Whether the banner is visible.
  final bool isVisible;

  /// The widget over which the banner will be displayed.
  final Widget child;

  const FlavorBanner(
      {super.key,
      required this.name,
      required this.isVisible,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return isVisible
        ? Directionality(
            textDirection: TextDirection.ltr,
            child: Banner(
              message: name.toUpperCase(),
              location: BannerLocation.bottomStart,
              child: child,
            ),
          )
        : child;
  }
}
