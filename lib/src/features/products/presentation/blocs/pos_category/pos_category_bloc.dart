import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yansol/src/core/usecases/use_case.dart';
import 'package:yansol/src/features/products/data/models/pos_category.dart';
import 'package:yansol/src/features/products/domain/usecases/get_pos_categories.dart';

part 'pos_category_event.dart';
part 'pos_category_state.dart';

class PosCategoryBloc extends Bloc<PosCategoryEvent, PosCategoryState> {
  PosCategoryBloc({required this.getPosCategories})
      : super(PosCategoryInitialState()) {
    on<GetPosCategoriesEvent>(_onGetPosCategoriesEvent);
  }

  final GetPosCategories getPosCategories;

  FutureOr<void> _onGetPosCategoriesEvent(
      GetPosCategoriesEvent event, Emitter<PosCategoryState> emit) async {
    try {
      final categories = await getPosCategories(NoParams());
      if (categories != null) {
        emit(PosCategoriesLoadedState(categories: categories));
      } else {
        emit(PosCategoryErrorState());
      }
    } catch (e) {
      emit(PosCategoryErrorState());
    }
  }
}
