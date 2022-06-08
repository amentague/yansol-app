part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UsersLoadedState extends UserState {
  const UsersLoadedState(this.users);
  final List<User> users;
  @override
  List<Object> get props => [users];
}

class UserLoadedState extends UserState {
  const UserLoadedState(this.user);
  final User user;
  @override
  List<Object> get props => [user];
}

class UserLoadErrorState extends UserState {
  const UserLoadErrorState(this.message);
  final String message;
  @override
  List<Object> get props => [message];
}
