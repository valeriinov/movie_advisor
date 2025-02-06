enum ContentMode {
  movies,
  series;

  bool get isMovies => this == movies;

  bool get isSeries => this == series;
}
