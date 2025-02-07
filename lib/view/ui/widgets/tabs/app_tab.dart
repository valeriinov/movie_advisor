import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../resources/base_theme/colors/base_colors_ext.dart';

class AppTab extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function()? onTap;

  const AppTab({
    super.key,
    required this.title,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;
    final style = isSelected ? context.labelLarge : context.bodyMedium;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: 12.insHor(),
        child: IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: style).paddingOnly(top: 7),
              if (isSelected)
                Divider(
                  thickness: 4,
                  height: 4,
                  color: colors.tabUnderSelect,
                )
            ],
          ),
        ),
      ),
    );
  }
}
