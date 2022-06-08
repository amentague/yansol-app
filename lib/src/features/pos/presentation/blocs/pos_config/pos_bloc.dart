import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';
import 'package:yansol/src/core/usecases/use_case.dart';
import 'package:yansol/src/features/pos/data/models/pos.dart';

import '../../../domain/usecase/usecases.dart';

part 'pos_event.dart';
part 'pos_state.dart';

class PosBloc extends Bloc<PosEvent, PosState> {
  PosBloc({required this.getPosConfig}) : super(PosInitialState()) {
    on<GetPos>(_onGetPos);
  }

  final GetPosConfig getPosConfig;

  FutureOr<void> _onGetPos(GetPos event, Emitter<PosState> emit) async {
    // try {
    final pos = await getPosConfig(NoParams());
    if (pos != null) {
      emit(PosLoadedState(pos: pos));
    } else {
      emit(PosErrorState());
    }
    // } catch (e) {
    //   Logger().e(e);
    //   emit(PosErrorState());
    // }
  }
}
