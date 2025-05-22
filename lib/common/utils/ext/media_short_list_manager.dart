import '../../../domain/entities/base_media/media_short_data.dart';

extension MediaShortListManager<T extends MediaShortData> on List<T> {
  List<T> handleWatchedItem(T item) {
    if (item.isWatched) {
      return _containsItemWithId(item.id)
          ? updateItemInList(item)
          : [item, ...this];
    }

    return where((e) => e.id != item.id).toList();
  }

  List<T> handleWatchlistItem(T item) {
    if (item.isInWatchlist) {
      return _containsItemWithId(item.id)
          ? updateItemInList(item)
          : [...this, item];
    }

    return where((e) => e.id != item.id).toList();
  }

  bool _containsItemWithId(int id) {
    return any((e) => e.id == id);
  }

  List<T> updateItemInList(T item) {
    return map((e) => e.id == item.id ? item : e).toList();
  }

  List<T> deleteItemFromList(T item) {
    return where((e) => e.id != item.id).toList();
  }
}
