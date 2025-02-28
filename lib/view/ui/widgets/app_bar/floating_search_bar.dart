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
  final VoidCallback? onMoreTap;
  final TextEditingController? textController;

  const FloatingSearchBar({
    super.key,
    this.isSearchEnabled = true,
    this.autoFocus = true,
    this.onSearch,
    this.onSearchTap,
    this.onMoreTap,
    this.textController,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return SliverAppBar(
      floating: true,
      snap: true,
      primary: false,
      automaticallyImplyLeading: false,
      toolbarHeight: kToolbarHeight + (dimens.spLarge / 2),
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(
          left: dimens.padHorPrim,
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
            IconButton(
              onPressed: onMoreTap,
              icon: AppSvgAsset(path: AppImages.moreVertIcon),
            ),
          ],
        ),
      ),
    );
  }
}
