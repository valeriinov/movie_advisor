abstract interface class MediaSyncDataSource {
  Future<void> syncMovies();

  Future<void> syncSeries();
}
