import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../resources/base_theme/colors/base_colors_ext.dart';
import '../resources/base_theme/components/base_components_styles_ext.dart';

Future<void> Function({
  required BuildContext context,
  required Widget child,
  bool hasBlur,
  bool enableDrag,
  bool isDismissible,
}) showBlurredBottomSheet = ({
  required BuildContext context,
  required Widget child,
  bool hasBlur = true,
  bool enableDrag = true,
  bool isDismissible = true,
}) {
  final colors = context.baseColors;
  final styles = context.baseComponentsStyles;
  final radius = styles.botSheetBorderRadius;

  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    barrierColor: colors.botSheetBarrier,
    elevation: 0,
    useSafeArea: true,
    enableDrag: enableDrag,
    isDismissible: isDismissible,
    builder: (context) => GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: hasBlur ? 10 : 0,
          sigmaY: hasBlur ? 10 : 0,
        ),
        child: IntrinsicHeight(
          child: Container(
            decoration: BoxDecoration(
              color: colors.botSheetBg,
              borderRadius: BorderRadiusCircular.top(radius),
            ),
            constraints: BoxConstraints(
              minHeight: styles.botSheetMinHeight,
              minWidth: double.infinity,
            ),
            child: child,
          ),
        ),
      ),
    ),
  );
};
