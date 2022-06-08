
import '../../../../api/odoo_environment.dart';
import '../../../../api/odoo_session.dart';

class AuthenticationRepositoryImpl {
  AuthenticationRepositoryImpl(this.env);

  final OdooEnvironment env;

  Stream<OdooSession> get sessionStream => env.orpc.sessionStream;

  get cacheSessionKey => null;

  Future<void> authenticateUser(
      {required String login, required String password}) async {
    await env.orpc.authenticate(env.dbName, login, password);
  }

  void logOutUser() {
    env.orpc.destroySession();
  }
}
