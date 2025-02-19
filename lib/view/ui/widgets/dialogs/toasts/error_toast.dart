import 'package:flutter/material.dart';

import '../../../resources/app_images.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import 'base_info_toast.dart';

class ErrorToast extends StatelessWidget {
  final String content;

  const ErrorToast({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return BaseInfoToast(
      iconPath: AppImages.toastErrorIcon,
      content: content,
      backgroundColor: colors.toastErrorBg,
    );
  }
}
