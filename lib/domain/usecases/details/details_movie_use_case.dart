import '../../entities/movie/movie_data.dart';
import '../../repositories/details_repository.dart';

import '../../entities/result.dart';
import 'details_use_case.dart';

class DetailsMovieUseCase implements DetailsUseCase<MovieData> {
  final DetailsRepository _repository;

  DetailsMovieUseCase({required DetailsRepository repository})
      : _repository = repository;

  @override
  Future<Result<MovieData>> getDetails(int id) {
    // TODO: implement getDetails
    throw UnimplementedError();
  }
}
