import '../../../dto/movie/movies_response_data_dto.dart';
import '../../../dto/series/series_response_data_dto.dart';
import '../../network_manager/net_response.dart';

abstract interface class MediaResponseHandler {
  MoviesResponseDataDto handleMoviesResponse(
    NetResponse<dynamic> response, {
    bool removeNotFilled = true,
  });

  SeriesResponseDataDto handleSeriesResponse(
    NetResponse<dynamic> response, {
    bool removeNotFilled = true,
  });
}
