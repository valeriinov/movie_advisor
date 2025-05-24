import '../../../../domain/entities/base_media/media_data.dart';
import '../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../domain/entities/movie/movie_data.dart';
import '../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../domain/entities/series/series_data.dart';
import '../../../../domain/entities/series/series_short_data.dart';
import 'movie_genre_desc.dart';
import 'series_genre_desc.dart';

extension MediaDataGenresStr on MediaData {
  String getGenresStr() {
    return switch (this) {
      MovieData(genres: final g) => g.map((e) => e.desc).join(', '),
      SeriesData(genres: final g) => g.map((e) => e.desc).join(', '),
      _ => '',
    };
  }
}

extension MediaShortDataGenresStr on MediaShortData {
  String getGenresStr() {
    return switch (this) {
      MovieShortData(genres: final g) => g.map((e) => e.desc).join(', '),
      SeriesShortData(genres: final g) => g.map((e) => e.desc).join(', '),
      _ => '',
    };
  }
}
