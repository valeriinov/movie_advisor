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

  static const infoIcon = "${_imgPath}info_icon.svg";
  static const addWatchlistIcon = "${_imgPath}add_watchlist_icon.svg";
  static const errorListImage = "${_imgPath}error_list_image.png";
  static const privacyIcon = "${_imgPath}privacy_icon.svg";
  static const toastErrorIcon = "${_imgPath}toast_error_icon.svg";
  static const tmbdLogo = "${_imgPath}tmbd_logo.svg";
  static const searchIcon = "${_imgPath}search_icon.svg";
  static const settingsIcon = "${_imgPath}settings_icon.svg";
  static const moreHorIcon = "${_imgPath}more_hor_icon.svg";
  static const toastInfoIcon = "${_imgPath}toast_info_icon.svg";
  static const homeIcon = "${_imgPath}home_icon.svg";
  static const termsIcon = "${_imgPath}terms_icon.svg";
  static const addWatchlistFillIcon = "${_imgPath}add_watchlist_fill_icon.svg";
  static const starIcon = "${_imgPath}star_icon.svg";
  static const placeholderImage = "${_imgPath}placeholder_image.png";
  static const signOutIcon = "${_imgPath}sign_out_icon.svg";
  static const emptyResultImage = "${_imgPath}empty_result_image.png";
  static const watchedIcon = "${_imgPath}watched_icon.svg";
  static const toastSuccessIcon = "${_imgPath}toast_success_icon.svg";
  static const addWatchedFillIcon = "${_imgPath}add_watched_fill_icon.svg";
  static const emptyListImage = "${_imgPath}empty_list_image.png";
  static const genreIcon = "${_imgPath}genre_icon.svg";
  static const dateIcon = "${_imgPath}date_icon.svg";
  static const movieIcon = "${_imgPath}movie_icon.svg";
  static const signInIcon = "${_imgPath}sign_in_icon.svg";
  static const moreVertIcon = "${_imgPath}more_vert_icon.svg";
  static const watchlistIcon = "${_imgPath}watchlist_icon.svg";
  static const userIcon = "${_imgPath}user_icon.svg";
  static const tvIcon = "${_imgPath}tv_icon.svg";
  static const addWatchedIcon = "${_imgPath}add_watched_icon.svg";
}
