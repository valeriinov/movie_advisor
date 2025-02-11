import '../entities/result.dart';

abstract interface class SearchRepository {
  Future<Result<void>> fetch();
}
