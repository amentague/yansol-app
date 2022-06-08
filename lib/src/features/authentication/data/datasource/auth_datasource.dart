
abstract class AuthDataSource {
  
  Future<void> logIn({
    required String username,
    required String password,
  });

  void logOut();
}
