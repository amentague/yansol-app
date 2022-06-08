import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:yansol/src/api/odoo_session.dart';
import 'package:yansol/src/features/authentication/data/repositories/authentication_repository._impl.dart';


part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthenticationRepositoryImpl authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(AuthenticationInitialeState()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
    _sessionStreamSub = _authenticationRepository.sessionStream.listen(
      (session) => add(AuthenticationStatusChanged(session)),
    );
  }

  final AuthenticationRepositoryImpl _authenticationRepository;

  late StreamSubscription<OdooSession> _sessionStreamSub;

  @override
  Future<void> close() {
    _sessionStreamSub.cancel();
    return super.close();
  }

  FutureOr<void> _onAuthenticationStatusChanged(
      AuthenticationStatusChanged event,
      Emitter<AuthenticationState> emit) async {
    if (event.session != null  && event.session!.id !='') {
      Logger().i('In Authentication bloc session: ${event.session}');
      return emit(AuthenticatedState(session: event.session!));
    } else {
      return emit(UnauthenticatedState());
    }
  }

  void _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) {
    _authenticationRepository.logOutUser();
    return emit(UnauthenticatedState());
  }
}
