import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/dialogs/base_dialogs_styles_ext.dart';
import '../../app_svg_asset.dart';

class BaseInfoToast extends StatelessWidget {
  final String iconPath;
  final String content;
  final Color backgroundColor;

  const BaseInfoToast({
    super.key,
    required this.iconPath,
    required this.content,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final styles = context.baseDialogsStyles;

    final radius = styles.toastBorderRadius;
    final bottom = styles.toastBotMargin;
    final hor = styles.toastHorMargin;

    return SafeArea(
      child: Container(
          width: double.infinity,
          constraints: BoxConstraints(minHeight: styles.toastMinHeight),
          margin: EdgeInsets.fromLTRB(hor, 10, hor, bottom),
          padding: styles.toastContPadding,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Text(content, style: styles.toastTextStyle)
                      .paddingOnly(right: 10, top: 2)),
              AppSvgAsset(path: iconPath, height: 28, width: 28),
            ],
          )),
    );
  }
}
