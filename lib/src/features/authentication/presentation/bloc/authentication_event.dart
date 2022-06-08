part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationStatusChanged extends AuthenticationEvent {
  final OdooSession? session;
  const AuthenticationStatusChanged(this.session);
  @override
  List<Object> get props => [session!];
}

class AuthenticationLogoutRequested extends AuthenticationEvent {}
