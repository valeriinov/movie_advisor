import '../../entities/series/series_data.dart';
import '../../repositories/details_repository.dart';

import '../../entities/result.dart';
import 'details_use_case.dart';

class DetailsSeriesUseCase implements DetailsUseCase<SeriesData> {
  final DetailsRepository _repository;

  DetailsSeriesUseCase({required DetailsRepository repository})
      : _repository = repository;

  @override
  Future<Result<SeriesData>> getDetails(int id) {
    return _repository.getDetailsSeries(id);
  }
}
