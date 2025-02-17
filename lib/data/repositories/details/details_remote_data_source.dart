import '../../dto/movie/movie_data_dto.dart';
import '../../dto/series/series_data_dto.dart';

abstract interface class DetailsRemoteDataSource {
  Future<MovieDataDto> getDetailsMovie(int id);

  Future<SeriesDataDto> getDetailsSeries(int id);
}
