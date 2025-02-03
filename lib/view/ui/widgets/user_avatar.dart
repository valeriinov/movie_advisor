import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../resources/base_theme/colors/base_colors_ext.dart';
import '../resources/base_theme/components/base_components_styles_ext.dart';
import 'image_with_loader.dart';

class UserAvatar extends StatelessWidget {
  final String userName;
  final String avatarPath;
  final double radius;

  const UserAvatar(
      {super.key,
      required this.userName,
      required this.avatarPath,
      this.radius = 75});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;
    final styles = context.baseComponentsStyles;

    final firstLetters = _getFirstNameLetters();
    final imgSize = (radius * 2).toInt();

    return CircleAvatar(
      radius: radius,
      backgroundColor: colors.avatarPrimBg,
      foregroundColor: colors.avatarPrimFg,
      child: avatarPath.isNotBlank
          ? ImageWithLoader(
              imagePath: avatarPath,
              cacheHeight: imgSize,
              cacheWidth: imgSize,
              shape: BoxShape.circle,
            )
          : Text(firstLetters, style: styles.avatarPrimTextStyle),
    );
  }

  String _getFirstNameLetters() {
    return userName.length >= 2
        ? userName.substring(0, 2).toUpperCase()
        : userName.toUpperCase();
  }
}
