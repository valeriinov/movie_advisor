import 'package:flutter/material.dart';

class AppThumbShape extends RoundSliderThumbShape {
  final double borderWidth;
  final Color borderColor;
  final Color fillColor;

  AppThumbShape({
    required double thumbRadius,
    required this.borderWidth,
    required this.borderColor,
    required this.fillColor,
  }) : super(enabledThumbRadius: thumbRadius);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final Paint fillPaint = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, enabledThumbRadius, fillPaint);

    final Paint borderPaint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, enabledThumbRadius, borderPaint);
  }
}
