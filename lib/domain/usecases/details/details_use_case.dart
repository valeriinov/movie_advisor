import '../../entities/base_media/media_data.dart';

import '../../entities/result.dart';

abstract interface class DetailsUseCase<T extends MediaData> {
  Future<Result<T>> getDetails(int id);
}
