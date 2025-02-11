import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../resources/app_fonts.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../widgets/stroke_text.dart';

class SuggestionNumber extends StatelessWidget {
  final int number;

  const SuggestionNumber({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return Skeleton.ignore(
      child: StrokeText(
        text: number.toString(),
        fontFamily: AppFonts.montserrat,
        fontSize: 96,
        height: 0.85,
        fontWeight: FontWeight.w600,
        textColor: colors.suggestNumFill,
        strokeColor: colors.suggestNumStroke,
        strokeWidth: 1.5,
        shadows: [
          Shadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            color: colors.suggestNumBlur.withValues(alpha: 0.25), // Drop shadow
          ),
        ],
      ),
    );
  }
}
