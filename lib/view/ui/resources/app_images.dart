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

  static const placeholderImage = "${_imgPath}placeholder_image.png";
}
