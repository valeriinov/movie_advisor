import 'package:flutter/material.dart';

mixin TransitionBuilderMixin {
  Widget fadeTransitionBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  Widget bottomToTopPopTransitionBuilder(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    const startOffset = Offset(0.0, 1.0);
    const endOffset = Offset.zero;
    const animationCurve = Curves.ease;

    var offsetTween = Tween(begin: startOffset, end: endOffset)
        .chain(CurveTween(curve: animationCurve));
    var offsetAnimation = animation.drive(offsetTween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }
}
