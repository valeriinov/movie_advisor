import 'package:flutter/material.dart';

class NoAlwaysScrollWrapper extends StatelessWidget {
  final Widget child;

  const NoAlwaysScrollWrapper({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: _NoAlwaysScrollBehavior(),
      child: child,
    );
  }
}

class _NoAlwaysScrollBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const BouncingScrollPhysics();
  }
}
