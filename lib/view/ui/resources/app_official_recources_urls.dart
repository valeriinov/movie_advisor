import '../base/content_mode_view_model/content_mode.dart';

abstract final class AppOfficialResourcesUrls {
  static const _appLinkBaseUrl = 'https://movie-advisor-links.web.app';

  static const privacyPolicyUrl =
      'https://docs.google.com/document/d/10ChkuHZRGIM25O83wYih3wa91rDioLkH0AKB8QnOT1w/edit?usp=sharing';
  static const termsAndConditionsUrl =
      'https://docs.google.com/document/d/1lfhEojRd_BabvtXY0AyJRt7e4Njq6KnJd-X71BWbWaY/edit?usp=sharing';

  static String detailsLink(int id, ContentMode contentMode) {
    return '$_appLinkBaseUrl/details?id=$id&content-mode=${contentMode.name}';
  }
}
