import '../../domain/entities/auth/auth_data.dart';
import '../dto/auth/auth_data_dto.dart';
import 'app_mapper.dart';

final class AppAuthMapper extends AppMapper {
  AuthDataDto mapAuthDataToDto(AuthData data) {
    return AuthDataDto(
      login: data.login,
      password: data.password,
    );
  }
}
