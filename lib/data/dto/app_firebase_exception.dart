import 'app_exception.dart';

class AppFirebaseException implements AppException {
  @override
  Object error;

  @override
  String message;

  AppFirebaseException({required this.error, this.message = ''});
}
