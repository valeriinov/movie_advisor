import 'package:flutter/material.dart';

import '../../../resources/base_theme/colors/base_colors_ext.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return PopScope(
      canPop: false,
      child: Dialog(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: Center(
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: colors.loadingIndicatorBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: CircularProgressIndicator()),
          ),
        ),
      ),
    );
  }
}
