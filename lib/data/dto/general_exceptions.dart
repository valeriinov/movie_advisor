import 'package:easy_localization/easy_localization.dart';

import '../../view/ui/resources/locale_keys.g.dart';
import 'app_exception.dart';

/// The [GeneralException] class is a sealed class that represents
/// general application-related exceptions. It implements the [AppException]
/// interface to provide a standardized way of handling exceptions.
sealed class GeneralException implements AppException {
  final String _message;

  @override
  Object error;

  @override
  String get message => _message.tr();

  GeneralException({required this.error, String message = ''})
    : _message = message;
}

/// The [SyncDataException] class is thrown when an error occurs
/// during data synchronization.
final class SyncDataException extends GeneralException {
  SyncDataException({
    required super.error,
    String message = LocaleKeys.syncDataErrorDesc,
  });
}
