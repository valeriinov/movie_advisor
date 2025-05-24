import '../../../../domain/entities/base_media/media_data.dart';
import '../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../domain/entities/movie/movie_data.dart';
import '../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../domain/entities/series/series_data.dart';
import '../../../../domain/entities/series/series_short_data.dart';
import '../app_date_formats.dart';

extension MediaDataDateStr on MediaData {
  String getPremiereYearStr() {
    return switch (this) {
      MovieData(premiereDate: final d) => _getYear(d),
      SeriesData(premiereDate: final d) => _getYear(d),
      _ => '',
    };
  }
}

extension MediaShortDataDateStr on MediaShortData {
  String getPremiereYearStr() {
    return switch (this) {
      MovieShortData(premiereDate: final d) => _getYear(d),
      SeriesShortData(premiereDate: final d) => _getYear(d),
      _ => '',
    };
  }
}

String _getYear(DateTime? date) {
  return date != null ? AppDateFormats.yearFormat(date) : '-';
}
