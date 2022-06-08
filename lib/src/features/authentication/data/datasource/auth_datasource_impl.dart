import 'dart:convert';

import 'package:yansol/src/features/authentication/data/datasource/auth_datasource.dart';

import 'package:http/http.dart' as http;

class AuthDataSourceImpl implements AuthDataSource {
  const AuthDataSourceImpl({required http.Client client}) : _client = client;

  final http.Client _client;

  @override
  Future<void> logIn(
      {required String username, required String password}) async {
    try {
      var response = await _client.post(Uri.https('0.0.0.0:8069', 'web/auth'),
          body: {'name': 'doodle', 'color': 'blue'});
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
      var uri = Uri.parse(decodedResponse['uri'] as String);
      print(await _client.get(uri));
    } finally {
      _client.close();
    }
  }

  @override
  void logOut() {
    // TODO: implement logOut
  }
}
