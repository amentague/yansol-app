import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yansol/src/core/usecases/use_case.dart';
import 'package:yansol/src/features/pos/data/models/pos.dart';

import '../../../domain/usecase/usecases.dart';

part 'pos_session_event.dart';
part 'pos_session_state.dart';

class PosSessionBloc extends Bloc<PosSessionEvent, PosSessionState> {
  PosSessionBloc({required this.getPosConfig}) : super(PosSessionInitialState()) {
    on<GetPosSessionEvent>(_onGetPos);
  }

  final GetPosConfig getPosConfig;

  FutureOr<void> _onGetPos(
      GetPosSessionEvent event, Emitter<PosSessionState> emit) async {
    try {
      final pos = await getPosConfig(NoParams());
      if (pos != null) {
        emit(PosSessionLoadedState(pos: pos));
      } else {
        emit(PosSessionErrorState());
      }
    } catch (e) {
      emit(PosSessionErrorState());
    }
  }
}
