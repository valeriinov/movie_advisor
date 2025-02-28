abstract interface class RefreshLocalDataSource {
  Stream<bool> shouldRefreshContent({required bool isMovies});
}
