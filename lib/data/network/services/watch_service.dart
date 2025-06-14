import '../../../common/app_locales.dart';
import '../../dto/localized_string.dart';
import '../../dto/movie/movie_data_dto.dart';
import '../../dto/movie/movie_short_data_dto.dart';
import '../../dto/series/series_data_dto.dart';
import '../../dto/series/series_short_data_dto.dart';
import '../../repositories/settings_provider.dart';
import '../network_manager/network_manager.dart';
import '../utils/image_url_handler/image_url_handler.dart';

class WatchService {
  final SettingsProvider _settingsProvider;
  final NetworkManager _mediaApiClient;
  final ImageUrlHandler _imageUrlHandler;

  WatchService({
    required SettingsProvider settingsProvider,
    required NetworkManager mediaApiClient,
    required ImageUrlHandler imageUrlHandler,
  }) : _settingsProvider = settingsProvider,
       _mediaApiClient = mediaApiClient,
       _imageUrlHandler = imageUrlHandler;

  Future<MovieShortDataDto> getLocalizedMovie(MovieShortDataDto data) async {
    final result = await _mediaApiClient.get(
      '/movie/${data.id}',
      queryParameters: _buildQueryParameters(),
    );

    final dto = MovieDataDto.fromJson(result.data);
    final preparedDto = _imageUrlHandler.handleMovieImages(dto);

    return MovieShortDataDto(
      id: data.id,
      genres: data.genres,
      originCountry: data.originCountry,
      premiereDate: data.premiereDate,
      tmdbRating: data.tmdbRating,
      userRating: data.userRating,
      isInWatchlist: data.isInWatchlist,
      isWatched: data.isWatched,
      updatedAt: data.updatedAt,
      localizedTitle: LocalizedString(
        en: _isCurrentLangEn() ? data.title : preparedDto.title,
        uk: _isCurrentLangEn() ? preparedDto.title : data.title,
      ),
      localizedPosterUrl: LocalizedString(
        en: _isCurrentLangEn() ? data.posterUrl : preparedDto.posterPath,
        uk: _isCurrentLangEn() ? preparedDto.posterPath : data.posterUrl,
      ),
      watchlistAddedAt: data.watchlistAddedAt,
      lastWatchedAt: data.lastWatchedAt,
    );
  }

  Future<SeriesShortDataDto> getLocalizedSeries(SeriesShortDataDto data) async {
    final result = await _mediaApiClient.get(
      '/tv/${data.id}',
      queryParameters: _buildQueryParameters(),
    );

    final dto = SeriesDataDto.fromJson(result.data);
    final preparedDto = _imageUrlHandler.handleSeriesImages(dto);

    return SeriesShortDataDto(
      id: data.id,
      genres: data.genres,
      originCountry: data.originCountry,
      premiereDate: data.premiereDate,
      tmdbRating: data.tmdbRating,
      userRating: data.userRating,
      isInWatchlist: data.isInWatchlist,
      isWatched: data.isWatched,
      updatedAt: data.updatedAt,
      localizedTitle: LocalizedString(
        en: _isCurrentLangEn() ? data.title : preparedDto.name,
        uk: _isCurrentLangEn() ? preparedDto.name : data.title,
      ),
      localizedPosterUrl: LocalizedString(
        en: _isCurrentLangEn() ? data.posterUrl : preparedDto.posterPath,
        uk: _isCurrentLangEn() ? preparedDto.posterPath : data.posterUrl,
      ),
      watchlistAddedAt: data.watchlistAddedAt,
      lastWatchedAt: data.lastWatchedAt,
    );
  }

  Map<String, dynamic> _buildQueryParameters() {
    final lang = _isCurrentLangEn() ? AppLocales.uk.name : AppLocales.en.name;

    return {'language': lang};
  }

  bool _isCurrentLangEn() {
    return _settingsProvider.currentLocale == AppLocales.en.name;
  }
}
