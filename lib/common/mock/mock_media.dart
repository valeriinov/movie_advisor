import '../../domain/entities/base_media/media_data.dart';
import '../../domain/entities/movie/movie_data.dart';
import '../../domain/entities/movie/movie_genre.dart';
import '../../domain/entities/rating/rating.dart';
import '../../view/ui/resources/app_images.dart';

class MockMedia {
  static MediaData createMediaData() {
    return MovieData(
      id: 1,
      posterUrl: AppImages.placeholderImage,
      backdropUrl: AppImages.placeholderImage,
      title: 'Terminator 2',
      genres: [MovieGenre.action, MovieGenre.scienceFiction],
      premiereDate: DateTime.now(),
      tmdbRating: TMDBRating(voteAverage: 8.9, voteCount: 42000),
      overview:
          'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, '
          'John Connor, from a more advanced and powerful cyborg.',
      userRating: -1,
      isInWatchlist: false,
      isWatched: false,
    );
  }
}
