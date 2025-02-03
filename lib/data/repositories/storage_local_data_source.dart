/// The [LocalStorageKeys] class provides constant keys for identifying
/// stored values in the local storage. These keys are typically used to
/// store and retrieve data securely and consistently.
abstract final class LocalStorageKeys {
  /// Key for storing the authentication token.
  static const String authToken = 'auth_api_token';
}

/// {@category DataSources}
///
/// The [StorageLocalDataSource] interface defines methods for interacting
/// with a local storage system. It allows storing, retrieving, and removing
/// data securely using a key-value pair mechanism.
abstract interface class StorageLocalDataSource {
  /// Stores a value in local storage associated with the given key.
  ///
  /// The [key] parameter is a unique identifier for the value being stored.
  /// The [value] parameter represents the data to be stored, which can be
  /// of any type [T].
  Future<void> set<T>(String key, T value);

  /// Removes a value from local storage by its key.
  ///
  /// The [key] parameter is the unique identifier for the value to be removed.
  /// This is useful for clearing sensitive or outdated data from storage.
  Future<void> remove({required String key});

  /// Retrieves a value from local storage by its key.
  ///
  /// The [key] parameter is the unique identifier for the value to be retrieved.
  /// This method returns the value of type [T], or `null` if no value is found.
  Future<T?> get<T>({required String key});
}
