extension GenreListManager<G> on List<G> {
  List<G> handleSelectionGenre(G genre) {
    if (contains(genre)) return where((e) => e != genre).toList();
    return [...this, genre];
  }
}
