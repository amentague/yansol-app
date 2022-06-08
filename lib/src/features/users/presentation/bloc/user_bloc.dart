import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:yansol/src/core/usecases/use_case.dart';
import 'package:yansol/src/features/users/data/models/user.dart';
import 'package:yansol/src/features/users/domain/usecases/get_users.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required GetUsers getUsers})
      : _getUsers = getUsers,
        super(UserInitial()) {
    on<GetUsersEvent>(_onGetUsersEvent);
    // on<GetUserStreamEvent>(_onGetUserStream);
    // _usersStreamSub = _getUsers.userRepository.recordStream
    //     .listen((users) => add(GetUserStreamEvent(users)));
  }
  final GetUsers _getUsers;
  // late StreamSubscription<List<User>> _usersStreamSub;

  @override
  Future<void> close() {
    // _usersStreamSub.cancel();
    return super.close();
  }

  // FutureOr<void> _onGetUserStream(
  //     GetUserStreamEvent event, Emitter<UserState> emit) {
  //   if (event.users.isNotEmpty) {
  //     Logger().w('users lenght: ${event.users.length}');
  //     Logger().e('user: ${event.users[0].name}');
  //     emit(UsersLoadedState(event.users));
  //   }
  // }

  FutureOr<void> _onGetUsersEvent(
      GetUsersEvent event, Emitter<UserState> emit) async {
    final users = await _getUsers(NoParams());
    if (users != null) {
      Logger().e('In User Bloc get users : ${users.length}');
      emit(UsersLoadedState(users));
    }
  }
}
