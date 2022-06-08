import '../../../../api/odoo_environment.dart';
import '../../../../api/odoo_session.dart';

abstract class AuthenticationRepository {
  AuthenticationRepository(this.env);
  final OdooEnvironment env;
  // Stream<OdooSession> get sessionStream;
  Future<void> authenticateUser(
      {required String login, required String password});
  void logOutUser();
}
