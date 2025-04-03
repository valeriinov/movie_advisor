import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

import '../../resources/app_cast_configuration_params.dart';
import 'update_localized_messages.dart';

class UpdateAlertWrapper extends StatelessWidget {
  final Widget child;

  const UpdateAlertWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return UpgradeAlert(
      upgrader: Upgrader(
        storeController: AppCastConfigurationParams.getStoreController(),
        messages: UpdateLocalizedMessages(),
        durationUntilAlertAgain: Duration.zero,
      ),
      showIgnore: false,
      showLater: false,
      child: child,
    );
  }
}
