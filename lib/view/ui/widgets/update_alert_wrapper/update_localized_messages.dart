import 'package:easy_localization/easy_localization.dart';
import 'package:upgrader/upgrader.dart';

import '../../resources/locale_keys.g.dart';

class UpdateLocalizedMessages extends UpgraderMessages {
  @override
  String? message(UpgraderMessage messageKey) {
    return switch (messageKey) {
      UpgraderMessage.body =>
        '${LocaleKeys.updateAlertNewVersionAvailable.tr()} '
            '{{appName}}! ${LocaleKeys.updateAlertNewVersion.tr()} '
            '{{currentAppStoreVersion}}, ${LocaleKeys.updateAlertCurrentVersion.tr()} {{currentInstalledVersion}}.',
      UpgraderMessage.buttonTitleIgnore => LocaleKeys.updateAlertIgnore.tr(),
      UpgraderMessage.buttonTitleLater => LocaleKeys.updateAlertLate.tr(),
      UpgraderMessage.buttonTitleUpdate => LocaleKeys.updateAlertUpdateNow.tr(),
      UpgraderMessage.prompt => LocaleKeys.updateAlertUpdateQuestion.tr(),
      UpgraderMessage.releaseNotes => LocaleKeys.updateAlertReleaseNotes.tr(),
      UpgraderMessage.title => LocaleKeys.updateAlertTitle.tr(),
    };
  }
}
