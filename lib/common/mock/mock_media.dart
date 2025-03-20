import '../../domain/entities/base_media/country.dart';
import '../../domain/entities/base_media/media_data.dart';
import '../../domain/entities/movie/movie_data.dart';
import '../../domain/entities/movie/movie_genre.dart';
import '../../domain/entities/rating/rating.dart';
import '../../domain/entities/series/series_data.dart';
import '../../domain/entities/series/series_genre.dart';
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
      overview:
          'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, '
          'John Connor, from a more advanced and powerful cyborg.',
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
      overview:
          'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, '
          'John Connor, from a more advanced and powerful cyborg.',
      userRating: -1,
      isInWatchlist: false,
      isWatched: false,
    );
  }
}
