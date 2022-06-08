part of 'company_bloc.dart';

abstract class CompanyState extends Equatable {
  const CompanyState();

  @override
  List<Object> get props => [];
}

class CompanyInitialState extends CompanyState {}

class CompanyLoadingState extends CompanyState {}

class CompanyLoadedState extends CompanyState {
  const CompanyLoadedState(this.company);
  final Company company;
}

class CompanyErrorState extends CompanyState {}
