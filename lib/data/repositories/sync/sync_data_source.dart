abstract interface class SyncDataSource {
  Future<void> syncMovies();

  Future<void> syncSeries();
}
