import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AppSvgAsset extends StatelessWidget {
  final String path;
  final Color? color;
  final double? width;
  final double? height;

  const AppSvgAsset({
    super.key,
    required this.path,
    this.color,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Skeleton.ignore(
      child: SvgPicture.asset(
        path,
        width: width,
        height: height,
        colorFilter:
            color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      ),
    );
  }
}
