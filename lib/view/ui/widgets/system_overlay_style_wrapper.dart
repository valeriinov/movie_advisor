import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/base_theme/colors/base_colors_ext.dart';

class SystemOverlayStyleWrapper extends StatelessWidget {
  final BaseColors colors;
  final Color? statusBarColor;
  final Color? systemNavigationBarColor;
  final Brightness systemNavigationBarIconBrightness;
  final Widget child;

  const SystemOverlayStyleWrapper({
    super.key,
    required this.colors,
    this.statusBarColor,
    this.systemNavigationBarColor,
    this.systemNavigationBarIconBrightness = Brightness.light,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusBarColor ?? colors.scaffoldBg,
        systemNavigationBarColor: systemNavigationBarColor ?? colors.scaffoldBg,
        systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
      ),
      child: child,
    );
  }
}
