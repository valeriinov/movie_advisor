import 'package:flutter/material.dart';

import '../../resources/app_images.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../app_svg_asset.dart';
import '../form/widgets/search_field_container.dart';

class FloatingSearchBar extends StatelessWidget {
  final bool isSearchEnabled;
  final bool autoFocus;
  final void Function(String?)? onSearch;
  final VoidCallback? onSearchTap;
  final VoidCallback? onFilterTap;
  final TextEditingController? textController;

  const FloatingSearchBar({
    super.key,
    this.isSearchEnabled = true,
    this.autoFocus = true,
    this.onSearch,
    this.onSearchTap,
    this.onFilterTap,
    this.textController,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final isFilterButtonVisible = onFilterTap != null;

    final fixedHeight = kToolbarHeight + (dimens.spLarge / 2);

    return SliverAppBar(
      floating: true,
      snap: true,
      primary: false,
      automaticallyImplyLeading: false,
      toolbarHeight: fixedHeight,
      expandedHeight: fixedHeight,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(
          left: dimens.padHorPrim,
          right: isFilterButtonVisible ? 0 : dimens.padHorPrim,
          bottom: dimens.spLarge / 2,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: onSearchTap,
                child: SearchFieldContainer(
                  enabled: isSearchEnabled,
                  autoFocus: autoFocus,
                  onSearch: onSearch,
                  controller: textController,
                ),
              ),
            ),
            if (isFilterButtonVisible)
              IconButton(
                onPressed: onFilterTap,
                icon: AppSvgAsset(path: AppImages.filterIcon),
              ),
          ],
        ),
      ),
    );
  }
}
