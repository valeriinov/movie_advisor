import 'package:dartz/dartz.dart';

import '../../../domain/entities/person/person_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/repositories/person_repository.dart';
import '../../mappers/app_person_mapper.dart';
import '../media_local_data_source.dart';
import 'person_remote_data_source.dart';

class ImplPersonRepository implements PersonRepository {
  final PersonRemoteDataSource _dataSource;
  final MediaLocalDataSource _localDataSource;
  final AppPersonMapper _mapper;

  ImplPersonRepository({
    required PersonRemoteDataSource dataSource,
    required MediaLocalDataSource localDataSource,
    required AppPersonMapper mapper,
  }) : _dataSource = dataSource,
       _localDataSource = localDataSource,
       _mapper = mapper;

  @override
  Future<Result<PersonData>> getPerson(int id) async {
    try {
      final person = await _dataSource.getPerson(id);

      final movieCast = await _localDataSource.addLocalDataToPersonMovieCredits(
        person.movieCredits?.cast ?? [],
      );
      final movieCrew = await _localDataSource.addLocalDataToPersonMovieCredits(
        person.movieCredits?.crew ?? [],
      );
      final seriesCast = await _localDataSource
          .addLocalDataToPersonSeriesCredits(person.seriesCredits?.cast ?? []);
      final seriesCrew = await _localDataSource
          .addLocalDataToPersonSeriesCredits(person.seriesCredits?.crew ?? []);

      final result = person.copyWith(
        movieCredits: person.movieCredits?.copyWith(
          cast: movieCast,
          crew: movieCrew,
        ),
        seriesCredits: person.seriesCredits?.copyWith(
          cast: seriesCast,
          crew: seriesCrew,
        ),
      );

      return Right(_mapper.mapPersonDataDtoToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }
}
