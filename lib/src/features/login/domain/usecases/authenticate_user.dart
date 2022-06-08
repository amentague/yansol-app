
import 'package:yansol/src/features/authentication/data/repositories/authentication_repository._impl.dart';

import '../../../../core/usecases/use_case.dart';
import '../../data/models/login_model.dart';
import '../../../authentication/domain/repositories/authentication_repository.dart';

class AuthenticateUser extends UseCase<void, LoginModel> {
  AuthenticateUser({required this.authenticationRepository});
  final AuthenticationRepositoryImpl authenticationRepository;
  @override
  Future<void> call(LoginModel params) async {
    return await authenticationRepository
        .authenticateUser(login: params.username, password: params.password);
  }
}
