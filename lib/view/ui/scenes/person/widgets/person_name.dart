import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';

class PersonName extends StatelessWidget {
  final String name;

  const PersonName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final left = dimens.padHorPrim;
    final right = dimens.padHorPrim;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 80,
        decoration: _buildGradientDecoration(context),
        child: Padding(
          padding: EdgeInsets.fromLTRB(left, 35, right, 0),
          child: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.headlineMedium,
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildGradientDecoration(BuildContext context) {
    final colors = context.baseColors;

    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0],
        tileMode: TileMode.mirror,
        colors: [
          Colors.transparent,
          colors.scaffoldBg.withValues(alpha: 0.05),
          colors.scaffoldBg.withValues(alpha: 0.1),
          colors.scaffoldBg.withValues(alpha: 0.2),
          colors.scaffoldBg.withValues(alpha: 0.37),
          colors.scaffoldBg.withValues(alpha: 0.6),
          colors.scaffoldBg.withValues(alpha: 0.8),
          colors.scaffoldBg.withValues(alpha: 0.9),
          colors.scaffoldBg.withValues(alpha: 0.95),
          colors.scaffoldBg.withValues(alpha: 0.98),
          colors.scaffoldBg,
        ],
      ),
    );
  }
}
