import 'package:flutter/material.dart';

class BottomSafeArea extends StatelessWidget {
  final Widget child;

  const BottomSafeArea({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      left: false,
      right: false,
      bottom: true,
      child: child,
    );
  }
}
