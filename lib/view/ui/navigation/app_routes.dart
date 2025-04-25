/// {@category Navigation}
///
/// The [AppRoutes] class defines constant route names used throughout the application.
///
/// It serves as a centralized location for managing route names, ensuring consistency
/// and reducing the likelihood of typos in route strings.
abstract final class AppRoutes {
  static const String home = '/home';
  static const String watchList = '/watch-list';
  static const String watched = '/watched';
  static const String more = '/more';

  static const String details = '/details';
  static const String person = '/person';

  // Home/Search
  static const String search = 'search';

  // Home/Filter
  static const String filter = 'filter';

  // More/About Us
  static const String aboutUs = 'about-us';

  // More/Auth
  static const String auth = 'auth';

  // More/Auth/Registration
  static const String reg = 'reg';

  // More/Auth/Reset Password
  static const String resetPass = 'reset-pass';

  // More/Delete Account
  static const String deleteAccount = 'delete-account';

  // More/Settings
  static const String settings = 'settings';
}
