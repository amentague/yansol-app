part of 'pos_bloc.dart';

abstract class PosState extends Equatable {
  const PosState();

  @override
  List<Object> get props => [];
}

class PosInitialState extends PosState {}

class PosLoadingState extends PosState {}

class PosLoadedState extends PosState {
  const PosLoadedState({required this.pos});
  final Pos pos;
  @override
  List<Object> get props => [pos];
}

class PosErrorState extends PosState {}
