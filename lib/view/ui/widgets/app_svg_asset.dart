import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppSvgAsset extends StatelessWidget {
  final String path;
  final Color? color;

  const AppSvgAsset({super.key, required this.path, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    );
  }
}
