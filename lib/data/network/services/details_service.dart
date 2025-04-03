import 'package:flutter_utils/flutter_utils.dart';

import '../../../common/app_locales.dart';
import '../../dto/movie/movie_data_dto.dart';
import '../../dto/series/series_data_dto.dart';
import '../../dto/video/video_data_dto.dart';
import '../../dto/video/videos_data_dto.dart';
import '../../repositories/settings_provider.dart';
import '../network_manager/network_manager.dart';
import '../utils/image_url_handler/image_url_handler.dart';

class DetailsService {
  final NetworkManager _localizedMediaApiClient;
  final NetworkManager _mediaApiClient;
  final SettingsProvider _settingsProvider;
  final ImageUrlHandler _imageUrlHandler;

  DetailsService({
    required NetworkManager localizedMediaApiClient,
    required NetworkManager mediaApiClient,
    required SettingsProvider settingsProvider,
    required ImageUrlHandler imageUrlHandler,
  }) : _localizedMediaApiClient = localizedMediaApiClient,
       _mediaApiClient = mediaApiClient,
       _settingsProvider = settingsProvider,
       _imageUrlHandler = imageUrlHandler;

  Future<MovieDataDto> getDetailsMovie(int id) async {
    final result = await _localizedMediaApiClient.get(
      '/movie/$id',
      queryParameters: _buildQueryParameters(),
    );

    MovieDataDto dto = MovieDataDto.fromJson(result.data);

    if (_shouldLoadEnVideos(dto.videos?.results)) {
      final enVideos = await _getMovieEnVideos(id);
      dto = dto.copyWith(videos: enVideos);
    }

    return _imageUrlHandler.handleMovieImages(dto);
  }

  Future<VideosDataDto> _getMovieEnVideos(int id) async {
    final result = await _mediaApiClient.get(
      '/movie/$id/videos',
      queryParameters: {'language': AppLocales.en.name},
    );

    return VideosDataDto.fromJson(result.data);
  }

  Future<SeriesDataDto> getDetailsSeries(int id) async {
    final result = await _localizedMediaApiClient.get(
      '/tv/$id',
      queryParameters: _buildQueryParameters(),
    );

    SeriesDataDto dto = SeriesDataDto.fromJson(result.data);

    if (_shouldLoadEnVideos(dto.videos?.results)) {
      final enVideos = await _getSeriesEnVideos(id);
      dto = dto.copyWith(videos: enVideos);
    }

    return _imageUrlHandler.handleSeriesImages(dto);
  }

  Future<VideosDataDto> _getSeriesEnVideos(int id) async {
    final result = await _mediaApiClient.get(
      '/tv/$id/videos',
      queryParameters: {'language': AppLocales.en.name},
    );

    return VideosDataDto.fromJson(result.data);
  }

  bool _shouldLoadEnVideos(List<VideoDataDto>? videos) {
    return _settingsProvider.currentLocale != AppLocales.en.name &&
        videos.isNullOrEmpty;
  }

  Map<String, dynamic> _buildQueryParameters() {
    return {'append_to_response': 'credits,videos'};
  }
}
