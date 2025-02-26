import 'package:flutter/material.dart';

import '../../../../../domain/entities/auth/user_data.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../widgets/app_svg_asset.dart';

class UserEmailTile extends StatelessWidget {
  final UserData? user;

  const UserEmailTile({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return AnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child:
          user != null
              ? ListTile(
                title: Text(user!.email),
                leading: AppSvgAsset(path: AppImages.userIcon),
              )
              : const SizedBox.shrink(),
    );
  }
}
