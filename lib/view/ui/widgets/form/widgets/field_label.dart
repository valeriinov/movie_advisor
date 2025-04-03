import 'package:flutter/material.dart';

import '../../../resources/base_theme/colors/base_colors_ext.dart';

class FieldLabel extends StatelessWidget {
  final Color? color;
  final bool isRequired;
  final Widget content;

  const FieldLabel({
    super.key,
    this.color,
    required this.content,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
          decoration: BoxDecoration(
            color: color ?? colors.scaffoldBg,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 2),
            child: content,
          ),
        ),
        if (isRequired)
          Positioned(
            right: -1,
            top: -1,
            child: Text('*', style: TextStyle(color: colors.txtFldPrimLabel)),
          ),
      ],
    );
  }
}
