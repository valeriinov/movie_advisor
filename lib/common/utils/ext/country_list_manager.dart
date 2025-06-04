import '../../../domain/entities/base_media/country.dart';

extension CountryListManager on List<Country> {
  List<Country> handleSelectionCountry(Country country) {
    if (contains(country)) return where((e) => e != country).toList();
    return [...this, country];
  }
}
