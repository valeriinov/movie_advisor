import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../app_svg_asset.dart';

class ContentModeSwitch extends StatelessWidget {
  final ContentMode contentMode;
  final VoidCallback toggleMode;

  const ContentModeSwitch({
    super.key,
    required this.contentMode,
    required this.toggleMode,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;
    final dimens = context.baseDimens;

    return Padding(
      padding: dimens.padHorPrim.insRight(),
      child: AnimatedToggleSwitch.rolling(
        height: 32,
        indicatorSize: Size.fromWidth(30),
        onTap: (_) => toggleMode(),
        current: contentMode,
        values: [ContentMode.movies, ContentMode.series],
        borderWidth: 1,
        style: ToggleStyle(
          backgroundColor: colors.contSwitchBg,
          indicatorColor: colors.contSwitchIndicator,
          borderColor: colors.contSwitchBorder,
          indicatorBorder: Border.all(color: colors.contSwitchBorder),
        ),
        onChanged: (_) => toggleMode(),
        iconBuilder: (mode, isSelected) {
          final size = 18.0;
          final color =
              isSelected ? colors.contSwitchFgSelect : colors.contSwitchFg;

          return mode.isMovies
              ? AppSvgAsset(
                path: AppImages.movieIcon,
                color: color,
                height: size,
                width: size,
              )
              : AppSvgAsset(
                path: AppImages.tvIcon,
                color: color,
                height: size,
                width: size,
              );
        },
      ),
    );
  }
}
