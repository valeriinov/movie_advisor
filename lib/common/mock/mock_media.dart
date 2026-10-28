import '../../domain/entities/base_media/country.dart';
import '../../domain/entities/base_media/media_data.dart';
import '../../domain/entities/movie/movie_data.dart';
import '../../domain/entities/movie/movie_genre.dart';
import '../../domain/entities/rating/rating.dart';
import '../../domain/entities/series/series_data.dart';
import '../../domain/entities/series/series_episode_data.dart';
import '../../domain/entities/series/series_genre.dart';
import '../../domain/entities/series/series_season_data.dart';
import '../../view/ui/resources/app_images.dart';

class MockMedia {
  static MediaData createMovieData() {
    return MovieData(
      id: 1,
      posterUrl: AppImages.placeholderImage,
      backdropUrl: AppImages.placeholderImage,
      title: 'Terminator 2',
      genres: [MovieGenre.action, MovieGenre.scienceFiction],
      premiereDate: DateTime.now(),
      revenue: 1000000000,
      tmdbRating: TMDBRating(voteAverage: 8.9, voteCount: 42000),
      originCountry: [Country.unitedStates],
      userRating: -1,
      isInWatchlist: false,
      isWatched: false,
    );
  }

  static SeriesData createSeriesData() {
    return SeriesData(
      id: 1,
      posterUrl: AppImages.placeholderImage,
      backdropUrl: AppImages.placeholderImage,
      title: 'Terminator 2',
      genres: [SeriesGenre.actionAndAdventure],
      premiereDate: DateTime.now(),
      tmdbRating: TMDBRating(voteAverage: 8.9, voteCount: 42000),
      originCountry: [Country.unitedStates],
      userRating: -1,
      isInWatchlist: false,
      isWatched: false,
      totalSeasonsCount: 1,
      seasons: const [SeriesSeasonData(seasonNumber: 1, episodeCount: 10)],
      lastEpisodeToAir: SeriesEpisodeData(
        seasonNumber: 1,
        episodeNumber: 8,
        airDate: DateTime(2024, 5, 10),
      ),
      nextEpisodeToAir: SeriesEpisodeData(
        seasonNumber: 1,
        episodeNumber: 9,
        airDate: DateTime(2024, 5, 17),
      ),
    );
  }
}
