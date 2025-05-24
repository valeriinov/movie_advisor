import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_utils/flutter_utils.dart';

class ConnectivityService {
  static const _logTitle = 'CONNECTIVITY SERVICE LOG';

  final Connectivity _connectivity;

  ConnectivityService({required Connectivity connectivity})
    : _connectivity = connectivity;

  Future<bool> isOnline() async {
    final connections = await _connectivity.checkConnectivity();

    return _hasOnlineStatus(connections);
  }

  Stream<bool> isOnlineChanged() {
    return _connectivity.onConnectivityChanged.map(_hasOnlineStatus);
  }

  bool _hasOnlineStatus(List<ConnectivityResult> connections) {
    final result = connections
        .where((e) => e != ConnectivityResult.none)
        .isNotEmpty;

    debugLog('[IS ONLINE]: $result', name: _logTitle);

    return result;
  }
}
