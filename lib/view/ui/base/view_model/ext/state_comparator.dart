import '../base_state.dart';

typedef StateSelector<T extends BaseState> = Object? Function(T? state);

/// {@category StateManagement}
///
/// A utility extension on [BaseState] for comparing different states in state management.
///
/// Provides methods to determine if there has been a change between two states,
/// particularly useful in scenarios where state comparison is necessary to decide
/// if certain actions should be taken, like updating UI elements or fetching data.
extension StateComparator<T extends BaseState> on T {
  /// Determines if there has been an update between the [prev] and the
  /// current state based on provided selectors.
  ///
  /// The [prev] parameter is the previous state to compare with.
  /// The [selectors] parameter is a list of selector functions that extract
  /// specific values from the state.
  /// The [notNull] parameter is a boolean flag that when set to true ensures
  /// that values extracted from the current state are not null.
  /// The [requireAll] parameter is a boolean flag that when set to true requires
  /// all selectors to indicate a change for this method to return true.
  ///     If false, this method returns true if any selector indicates a change.
  ///
  /// Returns true if the selected values indicate a state change based
  /// on the given conditions.
  bool isUpdateWithSelectors(
    T? prev,
    List<StateSelector<T>> selectors, {
    bool notNull = false,
    bool requireAll = true,
  }) {
    return switch (requireAll) {
      true => selectors.every((s) => isUpdate(prev, s, notNull: notNull)),
      false => selectors.any((s) => isUpdate(prev, s, notNull: notNull)),
    };
  }

  /// Compares a specific value extracted from the [prev] and the
  /// current state using a [selector].
  ///
  /// The [prev] parameter is the previous state.
  /// The [selector] parameter is a selector function to extract a
  /// specific value from the state.
  /// The [notNull] parameter is a boolean flag that when set to true
  /// ensures the value extracted from the current state is not null.
  ///
  /// Returns true if the selected value has changed, false otherwise.
  bool isUpdate(T? prev, StateSelector<T> selector, {bool notNull = false}) {
    var prevVal = selector(prev);
    var nextVal = selector(this);

    if (notNull && nextVal == null) return false;

    return prevVal != nextVal;
  }
}
