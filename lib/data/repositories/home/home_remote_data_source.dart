abstract interface class HomeRemoteDataSource {
  Future<void> getNowPlayingMovies({required int page});
}
