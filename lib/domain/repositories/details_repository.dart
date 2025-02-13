import '../entities/result.dart';

abstract interface class DetailsRepository {
  Future<Result<void>> fetch();
}
