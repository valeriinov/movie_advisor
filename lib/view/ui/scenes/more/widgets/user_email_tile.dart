import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';

import '../../../../../domain/entities/auth/user_data.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../widgets/app_svg_asset.dart';

class UserEmailTile extends StatelessWidget {
  final UserData? user;

  const UserEmailTile({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final styles = context.baseComponentsStyles;
    final durations = context.baseDurations;

    return AnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child:
          user != null
              ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text(
                      user!.email,
                      style: styles.listTilePrimTitleTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    leading: AppSvgAsset(
                      path: AppImages.userIcon,
                      height: 28,
                      width: 28,
                    ),
                  ),
                  dimens.spSmall.gapVert(),
                  Padding(
                    padding: dimens.padHorPrimIns,
                    child: Divider(height: 1),
                  ),
                ],
              )
              : const SizedBox.shrink(),
    );
  }
}
