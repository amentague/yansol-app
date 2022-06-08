import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yansol/src/features/company/data/models/company.dart';
import 'package:yansol/src/features/company/domain/usecases/get_company_by_id.dart';

part 'company_event.dart';
part 'company_state.dart';

class CompanyBloc extends Bloc<CompanyEvent, CompanyState> {
  CompanyBloc({required this.getCompanyById}) : super(CompanyInitialState()) {
    on<GetCompanyEvent>(_onGetCompanyEvent);
  }
  final GetCompanyById getCompanyById;
  FutureOr<void> _onGetCompanyEvent(
      GetCompanyEvent event, Emitter<CompanyState> emit) async {
    try {
      final company = await getCompanyById(event.id);
      if (company != null) {
        emit(CompanyLoadedState(company));
      } else {
        emit(CompanyErrorState());
      }
    } catch (e) {
      emit(CompanyErrorState());
    }
  }
}
