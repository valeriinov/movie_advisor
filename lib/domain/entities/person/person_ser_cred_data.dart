import 'package:dart_mappable/dart_mappable.dart';

import '../base_media/crew_job.dart';
import '../mappable_entity.dart';
import '../rating/rating.dart';
import '../series/series_genre.dart';

part 'person_ser_cred_data.mapper.dart';

@mappableEntity
class PersonSerCredData with PersonSerCredDataMappable {
  final int id;
  final String posterUrl;
  final String title;
  final List<SeriesGenre> genres;
  final DateTime? premiereDate;
  final TMDBRating tmdbRating;
  final int userRating;
  final bool isInWatchlist;
  final bool isWatched;
  final String? actCharacter;
  final CrewJob? crewJob;

  const PersonSerCredData({
    this.id = -1,
    this.posterUrl = '',
    this.title = '',
    this.genres = const [],
    this.premiereDate,
    this.tmdbRating = const TMDBRating(),
    this.userRating = 0,
    this.isInWatchlist = false,
    this.isWatched = false,
    this.actCharacter,
    this.crewJob,
  });
}
