// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';
const DB_FAILURE_MESSAGE = 'Database error';

abstract class Failure extends Equatable {
  const Failure({this.message = 'Something weent wrong'});
  final String message;

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {}

class LocalDbFailure extends Failure {}

class AuthenticationFailure extends Failure {
  const AuthenticationFailure({String message = 'Authentication failed'}) : super(message: message);
}
