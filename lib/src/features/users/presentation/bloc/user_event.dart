part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class GetUserByIdEvent extends UserEvent {
  const GetUserByIdEvent(this.id);
  final int id;
}

class GetUsersEvent extends UserEvent {}

class GetUserStreamEvent extends UserEvent {
  const GetUserStreamEvent(this.users);
  final List<User> users;
}
