part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState();
  @override
  List<Object?> get props => [];
}

class AuthenticationInitialeState extends AuthenticationState {}

class AuthenticatedState extends AuthenticationState {
  const AuthenticatedState({required this.session});

 
  final OdooSession session;

  @override
  List<Object?> get props => [session];
}

class UnauthenticatedState extends AuthenticationState {}
