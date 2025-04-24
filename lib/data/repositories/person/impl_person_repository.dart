import 'package:dartz/dartz.dart';

import '../../../domain/entities/person/person_data.dart';
import '../../../domain/entities/result.dart';
import '../../../domain/repositories/person_repository.dart';
import '../../mappers/app_person_mapper.dart';
import 'person_remote_data_source.dart';

class ImplPersonRepository implements PersonRepository {
  final PersonRemoteDataSource _dataSource;
  final AppPersonMapper _mapper;

  ImplPersonRepository({
    required PersonRemoteDataSource dataSource,
    required AppPersonMapper mapper,
  }) : _dataSource = dataSource,
       _mapper = mapper;

  @override
  Future<Result<PersonData>> getPerson(int id) async {
    try {
      final result = await _dataSource.getPerson(id);

      return Right(_mapper.mapPersonDataDtoToDomain(result));
    } catch (e) {
      return Left(_mapper.getException(e));
    }
  }
}
