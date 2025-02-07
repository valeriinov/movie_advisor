import '../../domain/entities/base_media/media_short_data.dart';
import '../../domain/entities/movie/movie_genre.dart';
import '../../domain/entities/movie/movie_short_data.dart';
import '../../domain/entities/rating/rating.dart';
import '../../view/ui/resources/app_images.dart';

class MockMediaShort {
  static List<MediaShortData> createMediaShortDataList(int count) {
    return List.generate(count, (i) => createMediaShortData(i));
  }

  static MediaShortData createMediaShortData(int id) {
    return MovieShortData(
      id: id,
      posterUrl: AppImages.placeholderImage,
      title: 'Terminator $id',
      genres: [MovieGenre.action, MovieGenre.scienceFiction],
      premiereDate: DateTime.now(),
      tmdbRating: TMDBRating(voteAverage: 8.9, voteCount: 42000),
      userRating: -1,
      isInWatchlist: false,
      isWatched: false,
    );
  }
}
