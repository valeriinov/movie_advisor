import '../../../../domain/entities/base_media/country.dart';
import '../../../../domain/entities/base_media/media_data.dart';
import '../../../../domain/entities/movie/movie_data.dart';
import '../../../../domain/entities/series/series_data.dart';
import 'country_desc.dart';

extension MediaDataCountriesStr on MediaData {
  String getCountriesStr() {
    return switch (this) {
      MovieData(originCountry: final c) =>
        c.where((e) => e != Country.none).map((e) => e.desc).join(', '),
      SeriesData(originCountry: final c) =>
        c.where((e) => e != Country.none).map((e) => e.desc).join(', '),
      _ => '',
    };
  }
}
