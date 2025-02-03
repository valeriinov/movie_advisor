/// {@category Resources}
///
/// The [AppImages] class provides a centralized and type-safe way to access
/// image asset paths within the application. This approach ensures consistency
/// and simplifies asset management by avoiding hardcoded strings throughout the codebase.
///
/// Example:
/// ```dart
/// Image.asset(AppImages.placeholderImage);
/// ```
abstract final class AppImages {
  static const _imgPath = "assets/images/";

  static const homeIcon = "${_imgPath}home_icon.svg";
  static const placeholderImage = "${_imgPath}placeholder_image.png";
  static const watchListIcon = "${_imgPath}watch_list_icon.svg";
  static const moreIcon = "${_imgPath}more_icon.svg";
  static const watchedIcon = "${_imgPath}watched_icon.svg";
}
