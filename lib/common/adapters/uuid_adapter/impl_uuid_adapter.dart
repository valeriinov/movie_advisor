import 'package:uuid/uuid.dart';

import 'uuid_adapter.dart';

/// {@category Utils}
///
/// [ImplUuidAdapter] is an implementation of the [UuidAdapter].
///
final class ImplUuidAdapter implements UuidAdapter {
  @override
  String v4() {
    const uuid = Uuid();
    return uuid.v4();
  }
}
