import '../base/content_mode_view_model/content_mode.dart';

abstract final class AppOfficialResourcesUrls {
  static const _appLinkBaseUrl = 'https://movie-advisor-links.web.app';

  static const privacyPolicyUrl =
      'https://docs.google.com/document/d/e/2PACX-1vRE81nqaC-qrAlDYRo4Mq-0g89NKMIWUtiSbluWlSbBYw6_neFlA_3fFP5IP_rwZ3JoPo-ah-T_SzH3/pub';
  static const termsAndConditionsUrl =
      'https://docs.google.com/document/d/e/2PACX-1vSVbjx6GZcVR5GXzfERRHXmty1AIylwoDrHJuOezbtvHVsZumh6M9HtNbp-UQ_BOadXP6zW_DUEnFo6/pub';

  static String detailsLink(int id, ContentMode contentMode) {
    return '$_appLinkBaseUrl/details?id=$id&content-mode=${contentMode.name}';
  }
}
