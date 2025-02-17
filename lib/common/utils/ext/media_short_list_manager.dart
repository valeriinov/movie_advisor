import '../../../domain/entities/base_media/media_short_data.dart';

extension MediaShortListManager<T extends MediaShortData> on List<T> {
  List<T> updateItemInList(T item) {
    return map((e) => e.id == item.id ? item : e).toList();
  }
}
