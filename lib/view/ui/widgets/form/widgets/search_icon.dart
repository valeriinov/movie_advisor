import 'package:flutter/material.dart';

import '../../../resources/app_images.dart';
import '../../app_svg_asset.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSvgAsset(path: AppImages.searchIcon);
  }
}
