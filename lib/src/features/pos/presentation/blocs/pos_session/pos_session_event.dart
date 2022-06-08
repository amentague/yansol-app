part of 'pos_session_bloc.dart';

abstract class PosSessionEvent extends Equatable {
  const PosSessionEvent();

  @override
  List<Object> get props => [];
}

class GetPosSessionEvent extends PosSessionEvent {}
