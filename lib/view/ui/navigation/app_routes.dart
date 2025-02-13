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

  // Home/Search
  static const String search = 'search';

  // Home/Search/Details
  // Home/Details
  // WatchList/Details
  // Watched/Details
  static const String details = 'details';
}
