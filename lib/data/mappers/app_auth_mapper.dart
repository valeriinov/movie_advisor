import '../../domain/entities/auth/auth_data.dart';
import '../../domain/entities/auth/delete_account_data.dart';
import '../../domain/entities/auth/reg_data.dart';
import '../../domain/entities/auth/reset_pass_data.dart';
import '../../domain/entities/auth/user_data.dart';
import '../dto/auth/auth_data_dto.dart';
import '../dto/auth/delete_account_data_dto.dart';
import '../dto/auth/reg_data_dto.dart';
import '../dto/auth/reset_pass_data_dto.dart';
import '../dto/auth/user_data_dto.dart';
import 'app_mapper.dart';

final class AppAuthMapper extends AppMapper {
  AuthDataDto mapAuthDataToDto(AuthData data) {
    return AuthDataDto(email: data.email, password: data.password);
  }

  RegDataDto mapRegDataToDto(RegData data) {
    return RegDataDto(email: data.email, password: data.password);
  }

  ResetPassDataDto mapResetPassDataToDto(ResetPassData data) {
    return ResetPassDataDto(email: data.email);
  }

  DeleteAccountDataDto mapDeleteAccountDataToDto(DeleteAccountData data) {
    return DeleteAccountDataDto(password: data.password);
  }

  UserData? mapUserdataDtoToDomain(UserDataDto? dto) {
    return dto != null
        ? UserData(id: dto.id ?? '', email: dto.email ?? '')
        : null;
  }
}
