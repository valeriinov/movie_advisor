import '../entities/movie/movie_data.dart';
import '../entities/result.dart';
import '../entities/series/series_data.dart';

abstract interface class DetailsRepository {
  Future<Result<MovieData>> getDetailsMovie(int id);

  Future<Result<SeriesData>> getDetailsSeries(int id);
}
