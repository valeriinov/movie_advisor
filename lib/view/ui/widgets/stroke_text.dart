import 'package:flutter/material.dart';

class StrokeText extends StatelessWidget {
  final String text;
  final double fontSize;
  final double height;
  final FontWeight fontWeight;
  final Color textColor;
  final Color strokeColor;
  final double strokeWidth;
  final List<Shadow>? shadows;
  final String? fontFamily;

  const StrokeText({
    required this.text,
    this.fontSize = 16,
    this.height = 1,
    this.fontWeight = FontWeight.bold,
    this.textColor = Colors.black,
    this.strokeColor = Colors.white,
    this.strokeWidth = 4.0,
    this.shadows,
    this.fontFamily,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            height: height,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            height: height,
            color: textColor,
            shadows: shadows,
          ),
        ),
      ],
    );
  }
}
