part of 'pos_session_bloc.dart';

abstract class PosSessionState extends Equatable {
  const PosSessionState();

  @override
  List<Object> get props => [];
}

class PosSessionInitialState extends PosSessionState {}

class PosSessionLoadingState extends PosSessionState {}

class PosSessionLoadedState extends PosSessionState {
  const PosSessionLoadedState({required this.pos});
  final Pos pos;
  @override
  List<Object> get props => [pos];
}

class PosSessionErrorState extends PosSessionState {}
